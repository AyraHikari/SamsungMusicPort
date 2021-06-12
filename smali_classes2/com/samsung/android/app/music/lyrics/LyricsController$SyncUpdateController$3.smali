.class Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$3;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$3;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController$3;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;

    invoke-static {v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$1000(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;->access$400(Lcom/samsung/android/app/music/lyrics/LyricsController$SyncUpdateController;I)J

    return-void
.end method
