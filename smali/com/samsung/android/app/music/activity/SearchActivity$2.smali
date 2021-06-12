.class Lcom/samsung/android/app/music/activity/SearchActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/SearchActivity;
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

    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity$2;->a:Lcom/samsung/android/app/music/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity$2;->a:Lcom/samsung/android/app/music/activity/SearchActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/activity/SearchActivity;->setFullPlayerEnterEnabled(Z)V

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/SearchActivity$2;->a:Lcom/samsung/android/app/music/activity/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/activity/SearchActivity;->setFullPlayerEnterEnabled(Z)V

    return-void
.end method
