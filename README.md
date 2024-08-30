# restaurant_app

A new Flutter project.

## Demo

### Feature 1 : Retrieving food list and searching

https://github.com/user-attachments/assets/347e166b-6d07-4707-93b4-ed68534063f3


### Feature 2 : Booking a table and writing name

#### Frontend side

https://github.com/user-attachments/assets/c22e7e8b-288a-4719-94dd-90fd55ab264f

#### Backend side

https://github.com/user-attachments/assets/c4a65123-e075-453c-bf69-fe33656f6286

## Getting started

Install <a href="https://fvm.app/">fvm</a> and install flutter version 3.24.1

```
fvm install 3.24.1
```
```
fvm flutter pub get
```
```
fvm flutter run main.dart
```
Or launch with VSCode

For developers, to generate freezed files
```
dart run build_runner watch --delete-conflicting-outputs
```

## Firebase firestore rules

```
rules_version = '2';

service cloud.firestore {
  match /databases/{database}/documents {
    match /food/{foodId} {
      allow read: if true;
      allow write: if false;
    }
    match /table/{tableId} {
      allow read: if true;
      allow write: if false;
    }
    match /user/{userId} {
      allow write, read: if request.auth != null && request.auth.uid == userId;
    }
    match /reserved_slot_day/{dayReserved} {
    	allow read: if true;
      // A write rule can be divided into create, update, and delete rules
      allow create: if true;
      allow update: if false;
      allow delete: if false;
    }
    match /reserved_slot_day/{dayReserved}/reserved_slot_hour/{hourReserved} {
    	allow read: if true;
      // A write rule can be divided into create, update, and delete rules
      allow create: if true;
      allow update: if false;
      allow delete: if false;
    }
    match /reserved_slot_day/{dayReserved}/reserved_slot_hour/{hourReserved}/table/{tableReservationId} {
    	allow read: if true;
      allow write: if request.auth != null && (resource == null || resource.data == null  ||  resource.data.reservedBy == null || resource.data.reservedBy == request.auth.uid );
    }
  }
}
```
