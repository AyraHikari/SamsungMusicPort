.class public abstract Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

.field private c:I

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->a:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment$1;-><init>(Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->c:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->c:I

    return p0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final a(IILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->a(IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected final a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->a(IILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected final a(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 102
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13035c

    .line 107
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f13035d

    .line 108
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 109
    iget v5, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->c:I

    .line 110
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 109
    invoke-virtual {v4, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 111
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p2, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->a:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const p2, 0x7f130192

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p5, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 116
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_3

    .line 120
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected abstract b()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 35
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 36
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f100109

    .line 44
    iput p1, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->c:I

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->b()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/details/BasePlayerDetailsFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method
