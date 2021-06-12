.class final Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/SpinnerHelper;->a([I)V
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

    iput-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$3;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$3;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/SpinnerHelper;->d(Lcom/samsung/android/app/music/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/SpinnerHelper$setDropDownItems$3;->a:Lcom/samsung/android/app/music/list/SpinnerHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/SpinnerHelper;->d(Lcom/samsung/android/app/music/list/SpinnerHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->getX()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->setDropDownHorizontalOffset(I)V

    return-void
.end method
