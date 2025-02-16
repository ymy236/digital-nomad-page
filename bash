# 本地新建文件夹并进入
mkdir digital-nomad && cd digital-nomad

# 创建三个文件（将之前代码分别粘贴进去）
touch index.html style.css script.js
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>数字游牧人 | 苹果风格页面</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <!-- 左侧内容卡片 -->
        <div class="content-card main-card">
            <h1 class="title-primary">
                数字游牧人
                <div class="title-underline"></div>
            </h1>
            
            <p class="text-body">
                简介我是谁 - 一名追求自由工作方式的数字游牧者，专注于远程协作与技术创新。通过智能工具和云端平台，打造移动办公新体验。
            </p>

            <!-- 新增计数区域 -->
            <div class="counter-section">
                <div class="counter-display" id="counter">0</div>
                <button class="apple-button" id="countButton">
                    点击计数
                    <span class="button-icon">+1</span>
                </button>
            </div>
        </div>

        <!-- 右侧内容区域 -->
        <div class="right-column">
            <!-- 图片卡片 -->
            <div class="image-card">
                <div class="image-container">
                    <img 
                        src="https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&auto=format&fit=crop&w=1200&q=80" 
                        alt="数字办公场景"
                        class="apple-image"
                    >
                    <div class="image-overlay"></div>
                </div>
                <p class="image-caption">现代办公空间 | 图片来源：Unsplash</p>
            </div>

            <!-- 文字内容卡片 -->
            <div class="content-card">
                <h2 class="title-secondary">
                    这是一个小标题
                    <div class="title-underline small"></div>
                </h2>
                
                <p class="text-body">
                    这是下一个小标题下的内容 - 采用苹果风格的极简设计语言，强调清晰的信息层级与舒适的可读性。通过精致的留白处理和微交互细节，打造专业现代的视觉体验。
                </p>
            </div>
        </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
// 创建新的JavaScript文件 script.js
document.addEventListener('DOMContentLoaded', function() {
    const counterElement = document.getElementById('counter');
    const countButton = document.getElementById('countButton');
    let count = 0;

    countButton.addEventListener('click', function() {
        // 增加计数
        count++;
        
        // 更新显示
        counterElement.textContent = count;
        
        // 添加动画
        counterElement.classList.add('animate');
        
        // 移除动画类以便下次触发
        setTimeout(() => {
            counterElement.classList.remove('animate');
        }, 300);
        
        // 按钮点击反馈
        this.style.transform = 'scale(0.95)';
        setTimeout(() => {
            this.style.transform = 'scale(1)';
        }, 100);
    });
});

/* 基础重置 */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* 系统字体设置 */
body {
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, 
        Ubuntu, Cantarell, sans-serif;
    line-height: 1.6;
    background: #f5f5f7;
}

/* 主容器 */
.container {
    display: flex;
    gap: 40px;
    padding: 40px;
    min-height: 100vh;
}

/* 内容卡片通用样式 */
.content-card {
    background: white;
    border-radius: 18px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.04);
    padding: 32px;
}

.main-card {
    flex: 1;
    max-width: 680px;
}

/* 文字排版 */
.title-primary {
    color: #1d1d1f;
    font-size: 2.5rem;
    font-weight: 600;
    margin-bottom: 24px;
    letter-spacing: -0.5px;
}

.title-secondary {
    color: #1d1d1f;
    font-size: 1.5rem;
    font-weight: 600;
    margin-bottom: 20px;
}

.title-underline {
    width: 48px;
    height: 4px;
    background: #0071e3;
    margin-top: 16px;
    border-radius: 2px;
}

.title-underline.small {
    width: 32px;
    height: 3px;
    margin-top: 12px;
}

.text-body {
    color: #86868b;
    font-size: 1.1rem;
    line-height: 1.6;
    margin-bottom: 32px;
}

/* 右侧布局 */
.right-column {
    flex: 1;
    max-width: 680px;
    display: flex;
    flex-direction: column;
    gap: 24px;
}

/* 图片卡片 */
.image-card {
    background: white;
    border-radius: 18px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.04);
    padding: 32px;
}

.image-container {
    position: relative;
    border-radius: 12px;
    overflow: hidden;
    padding-top: 56.25%;
    background: #000;
}

.apple-image {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    opacity: 0.96;
}

.image-overlay {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: linear-gradient(45deg, rgba(0,113,227,0.08) 0%, rgba(0,0,0,0) 60%);
}

.image-caption {
    color: #86868b;
    font-size: 0.9rem;
    margin-top: 16px;
    text-align: center;
}

/* 响应式设计 */
@media (max-width: 768px) {
    .container {
        flex-direction: column;
        padding: 20px;
    }

    .main-card, .right-column {
        max-width: 100%;
    }

    .title-primary {
        font-size: 2rem;
    }
}/* 在原有CSS基础上添加以下样式 */

/* 计数区域样式 */
.counter-section {
    margin-top: 32px;
    padding: 24px;
    background: #f5f5f7;
    border-radius: 12px;
    text-align: center;
}

.counter-display {
    font-size: 3rem;
    font-weight: 600;
    color: #1d1d1f;
    margin-bottom: 16px;
    transition: transform 0.2s ease;
}

/* 苹果风格按钮 */
.apple-button {
    position: relative;
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 12px 24px;
    background: linear-gradient(145deg, #0071e3, #0066cc);
    border: none;
    border-radius: 12px;
    color: white;
    font-size: 1rem;
    font-weight: 500;
    cursor: pointer;
    transition: all 0.2s ease;
    overflow: hidden;
}

.apple-button:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0, 113, 227, 0.3);
}

.apple-button:active {
    transform: translateY(0);
    box-shadow: 0 2px 6px rgba(0, 113, 227, 0.2);
}

.button-icon {
    margin-left: 8px;
    font-size: 0.9em;
    opacity: 0.8;
}

/* 数字动画 */
@keyframes pop {
    0% { transform: scale(1); }
    50% { transform: scale(1.1); }
    100% { transform: scale(1); }
}

.counter-display.animate {
    animation: pop 0.3s ease;
}

# 初始化git
git init
git add .
git commit -m "Initial commit"

# 关联远程仓库
git remote add origin https://github.com/你的用户名/digital-nomad-page.git
git push -u origin main
