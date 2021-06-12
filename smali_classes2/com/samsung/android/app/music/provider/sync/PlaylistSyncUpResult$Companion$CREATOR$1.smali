.class public final Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
    .locals 0

    .line 156
    new-array p1, p1, [Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion$CREATOR$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult$Companion$CREATOR$1;->a(I)[Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    move-result-object p1

    return-object p1
.end method
