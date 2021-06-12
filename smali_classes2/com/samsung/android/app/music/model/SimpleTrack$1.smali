.class final Lcom/samsung/android/app/music/model/SimpleTrack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/SimpleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/model/SimpleTrack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/SimpleTrack;
    .locals 1

    .line 238
    new-instance v0, Lcom/samsung/android/app/music/model/SimpleTrack;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/SimpleTrack;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/model/SimpleTrack;
    .locals 0

    .line 243
    new-array p1, p1, [Lcom/samsung/android/app/music/model/SimpleTrack;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack$1;->newArray(I)[Lcom/samsung/android/app/music/model/SimpleTrack;

    move-result-object p1

    return-object p1
.end method
