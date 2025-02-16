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