.class Lcom/samsung/android/app/music/activity/SearchActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/SearchActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity$1;->a:Lcom/samsung/android/app/music/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity$1;->a:Lcom/samsung/android/app/music/activity/SearchActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity;->invalidateOptionsMenu()V

    return-void
.end method
