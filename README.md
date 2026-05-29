# 배달 데이터 분석 및 머신러닝 프로젝트

배달 서비스 사용자 데이터를 기반으로 사용자 특성을 분석하고,
주문 여부를 예측하는 머신러닝 모델을 구현한 프로젝트입니다.

---

## 프로젝트 목적

* 배달 서비스 사용자 데이터 구조 이해
* 주문 여부에 영향을 주는 요인 분석
* SQL을 활용한 데이터 집계 경험
* 머신러닝을 통한 예측 모델 구현

---

## 사용 기술

* Python (Pandas, Matplotlib, Seaborn)
* SQLite / SQL
* Scikit-learn
* Jupyter Notebook

---

## 데이터 구성

사용 데이터는 배달 서비스 사용자 정보로 구성되어 있습니다.

주요 컬럼은 다음과 같습니다.

* Age
* Gender
* Marital Status
* Occupation
* Monthly Income
* Educational Qualifications
* Family size
* Location (latitude, longitude)
* Feedback
* Output (주문 여부)

---

## 데이터 전처리

* 불필요한 컬럼 제거 (Unnamed: 12)
* 범주형 데이터 Label Encoding 처리
* Feature / Target 변수 분리

---

## 데이터 분석

* 연령대별 사용자 분포 확인
* 직업별 사용자 비율 분석
* 결혼 여부에 따른 주문 패턴 분석
* 전체 주문 비율 확인

---

## SQL 분석

SQLite를 활용하여 다음 분석을 수행함

* 직업별 사용자 수 집계
* 성별 분포 분석
* 평균 나이 계산
* 그룹별 데이터 집계

---

## 머신러닝 모델

사용 모델:

* Logistic Regression
* Random Forest

학습 과정:

* Train / Test Split (80:20)
* Label Encoding 적용
* 모델 학습 및 예측 수행

---

## 결과

* Random Forest 모델이 Logistic Regression보다 높은 성능을 보임
* 전체 정확도는 약 0.80 ~ 0.90 수준
* 일부 변수들이 주문 여부에 영향을 미치는 것을 확인함

---

## 주요 변수 영향

* 소득 수준과 직업이 주문 여부에 영향
* Feedback 변수는 Output과 높은 상관관계 존재
* Random Forest가 비선형 패턴을 더 잘 반영함

---

## 프로젝트 구조

```bash id="f9d2sa"
delivery-analysis/
│
├── data/
├── notebooks/
│   └── delivery_analysis.ipynb
├── sql/
│   └── analysis.sql
├── visualization/
│   └── occupation_chart.png
├── README.md
└── requirements.txt
```

---

## 실행 방법

```bash id="m2n8qp"
pip install -r requirements.txt
jupyter notebook
```

---

## 개선 방향

* Feature Engineering 추가
* 모델 튜닝 (Hyperparameter Optimization)
* Cross Validation 적용
* 다양한 모델 비교 (XGBoost 등)
