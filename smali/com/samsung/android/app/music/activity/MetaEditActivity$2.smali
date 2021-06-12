.class Lcom/samsung/android/app/music/activity/MetaEditActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/MetaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/MetaEditActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/MetaEditActivity$2;->a:Lcom/samsung/android/app/music/activity/MetaEditActivity;

    new-instance v1, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/activity/MetaEditActivity$2$1;-><init>(Lcom/samsung/android/app/music/activity/MetaEditActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/MetaEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
