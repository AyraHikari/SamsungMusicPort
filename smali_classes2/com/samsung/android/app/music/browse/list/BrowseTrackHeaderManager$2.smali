.class Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->b(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;)I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$2;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;Z)V

    :cond_0
    return-void
.end method
