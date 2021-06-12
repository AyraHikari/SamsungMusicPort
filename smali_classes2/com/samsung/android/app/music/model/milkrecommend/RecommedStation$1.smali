.class final Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;
    .locals 1

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;
    .locals 0

    .line 51
    new-array p1, p1, [Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation$1;->newArray(I)[Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;

    move-result-object p1

    return-object p1
.end method
