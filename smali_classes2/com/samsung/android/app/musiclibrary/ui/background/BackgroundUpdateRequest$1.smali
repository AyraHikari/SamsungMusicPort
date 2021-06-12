.class final Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;
    .locals 1

    .line 64
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;
    .locals 0

    .line 69
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest$1;->a(I)[Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    move-result-object p1

    return-object p1
.end method
