.class public final Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueHistory"
.end annotation


# static fields
.field public static final DEFAULT_QUEUE_PLAYLIST_ID:Ljava/lang/String; = "PLAY-QUEUE"

.field static final EMPTY_HISTORY:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;


# instance fields
.field public final count:I

.field public final isAllCase:Z

.field public final playlistId:Ljava/lang/String;

.field public final queueType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 299
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;-><init>(ILjava/lang/String;IZ)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->EMPTY_HISTORY:Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IZ)V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->queueType:I

    .line 294
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p2, "PLAY-QUEUE"

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    .line 295
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->count:I

    .line 296
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->isAllCase:Z

    return-void
.end method
