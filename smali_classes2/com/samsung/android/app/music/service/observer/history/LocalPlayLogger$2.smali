.class Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;

.field final synthetic b:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;->b:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;->b:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;->b:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    new-instance v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)V

    .line 240
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updatePlayHistory request to send."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;->b:Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->b(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;->a:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayHistoryRoom;->a(Landroid/content/Context;Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;)V

    .line 243
    invoke-static {}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updatePlayHistory save completed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
