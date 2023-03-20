.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "MusicSpinner.kt"


# instance fields
.field public s:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public callOnClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->s:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2
    :goto_0
    invoke-super {p0}, Landroid/widget/Spinner;->callOnClick()Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->s:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->performClick()Z

    move-result v0

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSpinner;->s:Landroid/view/View$OnClickListener;

    return-void
.end method
