# AI를 이겨라

중학생 대상 1~2시간짜리 AI 특강 자료. 퀴즈쇼, AI 원리 게임, Teachable Machine 실습, 팀별 AI 게임 제작 배틀, AI 바른 사용법으로 구성된다.

## 바로 열기 (GitHub Pages)

- 시작 화면: https://profnamo.github.io/ai-winter-camp/
- 퀴즈쇼: https://profnamo.github.io/ai-winter-camp/quiz.html
- 게임 제작 미션카드: https://profnamo.github.io/ai-winter-camp/mission.html

## 폴더 구성

| 경로 | 내용 |
| --- | --- |
| `퀴즈쇼.html`, `게임만들기_미션카드.html` | 원본 페이지 (Claude 아티팩트용) |
| `docs/` | GitHub Pages로 서비스되는 사이트. `build.ps1`로 원본에서 생성 |
| `slides/source/` | 진행용 슬라이드 원본 (Claude Slides 형식, 슬라이드별 HTML과 발표자 노트) |

## 원본을 고친 뒤

```powershell
powershell -ExecutionPolicy Bypass -File build.ps1
```

`docs/`가 다시 만들어지면 커밋하고 push한다.

## 진행 순서 (약 1시간 45분)

1. AI냐 진짜냐 퀴즈쇼 (15분)
2. AI의 비밀: 다음 단어 맞히기와 환각 (15분)
3. Teachable Machine으로 AI 가르치고 망쳐 보기 (20분)
4. 팀별 게임 제작 배틀 (45분)
5. 고등학생이 되기 전에: 공부 코치로 쓰는 법, 선 넘지 않기 (10분)
