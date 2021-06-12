.class public Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;


# direct methods
.method private a(Z)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_button:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, ", "

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->tts_dimmed:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->a:Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;I)V

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->a(Z)V

    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->a:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/view/View;Z)V

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->a(Z)V

    return-void
.end method

.method public showButtonBackground(Z)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->a:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->play_all_text_show_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->a:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->play_all_text_show_button_stub:I

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;->b:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->a:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->play_all_text_show_button_stub:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 65
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
