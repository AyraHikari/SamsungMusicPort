.class Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->c()V

    :cond_0
    return-void
.end method
