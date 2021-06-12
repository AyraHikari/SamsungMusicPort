.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "source.readString()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "source.readString()"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v1, v0

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(I)[Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;
    .locals 0

    .line 50
    new-array p1, p1, [Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion$CREATOR$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData$Companion$CREATOR$1;->a(I)[Lcom/samsung/android/app/music/milk/store/setfavorite/SetFavoriteData;

    move-result-object p1

    return-object p1
.end method
