.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;

    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;",
            ")V"
        }
    .end annotation

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "options"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;

    return-void
.end method

.method public onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback$Companion;

    return-void
.end method
