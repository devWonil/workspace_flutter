import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required}) : super(key: key);

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("버블 정렬")),
            body: Center(
              child: Text(numbers.toString()),
            )));
  }
}

// class Bubble_Sort {
  // static void Bubble_sort(int[] arr) {
  // 	Bubble_sort(arr, arr.length);
  // }

  // static void Bubble_sort(int[] arr, int size) {

  // 	// round는 배열 크기 - 1 만큼 진행됨
  // 	for(int i = 1; i < size; i++) {

  // 		// 각 라운드별 비교횟수는 배열 크기의 현재 라운드를 뺀 만큼 비교함
  // 		for(int j = 0; j < size - i; j++) {

  // 			/*
  // 			 *  현재 원소가 다음 원소보다 클 경우
  // 			 *  서로 원소의 위치를 교환한다.
  // 			 */
  // 			if(arr[j] > arr [j + 1]) {
  // 				swap(arr, j, j + 1);
  // 			}
  // 		}
  // 	}
  // }

  // static void swap(int[] arr, int i, int j) {
  // 	int temp = arr[i];
  // 	arr[i] = arr[j];
  // 	arr[j] = temp;
  // }

