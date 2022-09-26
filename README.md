# OpenAppStore
Apple AppStore Api를 이용한 학습
[App Store Connect API / App Store] (https://developer.apple.com/documentation/appstoreconnectapi/app_store)

# 기본설정

Tuist 기반 SwitUI 템플릿으로 프로젝트 생성 함.

참고: https://tuist.io/

## Tuist

> 프로젝트 파일 및 폴더 변경시 .xcodeproj가 수시로 변경되어 협업시 빈번한 깃 충돌등의 이슈 해결을 위해 사용합니다.

* 대표 명령어 3가지  

:one: **`tuist generate`**  
Project.swift 파일에 작성된 내용대로 프로젝트 생성 명령어.
  
:two: **`tuist edit`**  
Tuist 설정을 변경하고 싶다면 Project.swift 파일 수정시 명령어.
  
:three: **`tuist fetch`**   
Dependencies.swift에 작성된 외부 라이브러리 반영시 명령어.
