document.addEventListener('DOMContentLoaded', function () {
  const tabs = document.querySelectorAll('.tab');
  const contents = document.querySelectorAll('.content-item');

  tabs.forEach((tab, idx) => {
    tab.addEventListener('click', function () {
      // 모든 탭과 콘텐츠에서 active 제거
      tabs.forEach((t) => t.classList.remove('active'));
      contents.forEach((c) => c.classList.remove('active'));

      // 클릭한 탭과 같은 순서의 콘텐츠에 active 추가
      tab.classList.add('active');
      contents[idx].classList.add('active');
    });
  });
});
