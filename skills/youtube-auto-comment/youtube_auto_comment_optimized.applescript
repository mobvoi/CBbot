-- YouTube 自动评论脚本 (速度优化版)
-- 每步等待3-5秒，快速但稳定

on run argv
	-- 获取命令行参数
	if (count of argv) > 0 then
		set videoURL to item 1 of argv
	else
		set videoURL to "https://www.youtube.com/watch?v=W96vTvdiq84"
	end if
	
	-- 设置评论内容到剪贴板
	set commentContent to "🚀 Amazing content! CBBot AI助手正在通过AppleScript自动化展示其强大能力！这个评论本身就是CBBot + Chrome自动化的实际演示。感谢分享如此精彩的内容！ #CBBot #CodeBanana #AI自动化"
	set the clipboard to commentContent
	
	tell application "Google Chrome"
		activate
		delay 2
		
		try
			-- 第一步：打开目标视频
			log "步骤1: 打开YouTube视频"
			tell front window
				make new tab with properties {URL:videoURL}
				set active tab index to (count of tabs)
			end tell
			
			-- 等待页面加载 (优化到10秒)
			delay 10
			set currentTab to active tab of front window
			
			-- 第二步：快速滚动到评论区
			log "步骤2: 快速滚动到评论区"
			execute currentTab javascript "window.scrollTo({top: 600, behavior: 'smooth'});"
			delay 3
			execute currentTab javascript "window.scrollTo({top: 1000, behavior: 'smooth'});"
			delay 3
			execute currentTab javascript "window.scrollTo({top: 1400, behavior: 'smooth'});"
			delay 4
			
			-- 第三步：查找并点击评论输入区
			log "步骤3: 查找评论输入区"
			execute currentTab javascript "
				var placeholder = document.querySelector('#placeholder-area');
				if (placeholder) {
					placeholder.scrollIntoView({behavior: 'smooth', block: 'center'});
					window.foundPlaceholder = true;
				} else {
					window.foundPlaceholder = false;
				}
			"
			
			delay 4
			
			-- 第四步：点击激活评论输入框
			log "步骤4: 激活评论输入框"
			execute currentTab javascript "
				var placeholder = document.querySelector('#placeholder-area');
				if (placeholder) {
					placeholder.focus();
					placeholder.click();
					window.placeholderClicked = true;
				} else {
					window.placeholderClicked = false;
				}
			"
			delay 4
			
			-- 第五步：等待编辑器出现
			log "步骤5: 等待编辑器出现"
			execute currentTab javascript "
				var editor = document.querySelector('#contenteditable-root');
				if (editor && editor.offsetParent !== null) {
					editor.focus();
					window.editorReady = true;
				} else {
					window.editorReady = false;
				}
			"
			delay 3
			
			-- 第六步：粘贴内容
			log "步骤6: 粘贴评论内容"
			tell application "System Events"
				keystroke "v" using {command down}
			end tell
			delay 3
			
			-- 验证内容
			execute currentTab javascript "
				var editor = document.querySelector('#contenteditable-root');
				if (editor && editor.textContent && editor.textContent.length > 10) {
					window.contentPasted = true;
					window.contentLength = editor.textContent.length;
				} else {
					window.contentPasted = false;
					window.contentLength = 0;
				}
			"
			delay 2
			
			-- 第七步：查找并点击发布按钮
			log "步骤7: 查找发布按钮"
			execute currentTab javascript "
				var buttons = document.querySelectorAll('button');
				var found = false;
				
				for (var i = 0; i < buttons.length; i++) {
					var btn = buttons[i];
					var text = btn.textContent.toLowerCase().trim();
					
					if ((text === 'comment' || text.includes('comment')) && 
						btn.offsetParent !== null && !btn.disabled) {
						btn.click();
						window.buttonClicked = true;
						window.buttonText = text;
						found = true;
						break;
					}
				}
				
				if (!found) {
					window.buttonClicked = false;
					window.buttonText = 'not found';
				}
			"
			delay 3
			
			-- 生成执行报告
			set foundPlaceholder to execute currentTab javascript "window.foundPlaceholder ? 'true' : 'false'"
			set placeholderClicked to execute currentTab javascript "window.placeholderClicked ? 'true' : 'false'"
			set editorReady to execute currentTab javascript "window.editorReady ? 'true' : 'false'"
			set contentPasted to execute currentTab javascript "window.contentPasted ? 'true' : 'false'"
			set contentLength to execute currentTab javascript "window.contentLength || 0"
			set buttonClicked to execute currentTab javascript "window.buttonClicked ? 'true' : 'false'"
			set buttonText to execute currentTab javascript "window.buttonText || 'none'"
			
			set optimizedReport to "🎯 YouTube优化版自动评论执行报告" & return & return & "📹 目标视频: " & videoURL & return & return & "⚡ 优化执行结果 (3-5秒间隔):" & return & "📍 Placeholder发现: " & foundPlaceholder & return & "👆 Placeholder点击: " & placeholderClicked & return & "✏️ 编辑器就绪: " & editorReady & return & "💬 内容粘贴: " & contentPasted & return & "📝 内容长度: " & contentLength & " 字符" & return & "🚀 按钮点击: " & buttonClicked & return & "🔘 按钮文本: " & buttonText & return & return & "⏱️ 总执行时间: 约40秒 (vs 之前60秒)"
			
			-- 显示通知
			if contentPasted is "true" and buttonClicked is "true" then
				display notification "🎉 CBBot优化版自动评论成功！更快更稳定！" with title "YouTube自动化优化版"
			else if contentPasted is "true" then
				display notification "⚠️ 内容已输入，请手动发布" with title "YouTube自动化部分成功"
			else
				display notification "❌ 需要手动完成评论" with title "YouTube自动化"
			end if
			
			return optimizedReport
			
		on error errMsg
			display notification "❌ 优化版脚本出错: " & errMsg with title "YouTube自动化错误"
			return "❌ 优化版脚本执行错误: " & errMsg
		end try
	end tell
end run