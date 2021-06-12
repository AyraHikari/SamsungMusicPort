.class Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->registerCurrentSongObserver(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;Landroid/os/Handler;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;->onContentChanged(ZZLandroid/net/Uri;)V

    return-void
.end method
