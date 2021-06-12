.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 570
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Companion$CREATOR$1;->newArray(I)[Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    return-object p1
.end method
