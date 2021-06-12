.class final Lcom/samsung/android/app/music/list/SpinnerHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/SpinnerHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/SpinnerHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/SpinnerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setViewEnabled(Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->d(Lcom/samsung/android/app/music/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/view/View;Z)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$1;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->d(Lcom/samsung/android/app/music/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setEnabled(Z)V

    return-void
.end method
