.class public final Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "MobileDataPreference.kt"


# instance fields
.field public s0:Landroidx/appcompat/widget/SwitchCompat;

.field public t0:Z

.field public u0:Landroidx/fragment/app/FragmentManager;

.field public v0:Landroid/view/View;

.field public w0:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0404fe

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic o1(Landroidx/fragment/app/Fragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->q1(Landroidx/fragment/app/Fragment;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static final q1(Landroidx/fragment/app/Fragment;Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "$fg"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/samsung/android/app/musiclibrary/ui/dialog/OneUiDialogFragment;

    const/4 p2, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OneUiDialogFragment;->E0(Lcom/samsung/android/app/musiclibrary/ui/dialog/OneUiDialogFragment;Landroid/view/View;IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->t0:Z

    return v0
.end method

.method public b1(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->b1(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->t0:Z

    .line 3
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->v0(Z)Z

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->s0:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public h0(Landroidx/preference/l;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->h0(Landroidx/preference/l;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$y0;->a:Landroid/view/View;

    const-string v1, "holder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->r1(Landroid/view/View;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->t0:Z

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setDuplicateParentStateEnabled(Z)V

    .line 6
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->s0:Landroidx/appcompat/widget/SwitchCompat;

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$y0;->a:Landroid/view/View;

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->v0:Landroid/view/View;

    .line 8
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->u0:Landroidx/fragment/app/FragmentManager;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/dialog/k;->s:Lcom/samsung/android/app/music/dialog/k$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/k$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->p1(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public i0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->b1(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->u0:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/music/dialog/k;->s:Lcom/samsung/android/app/music/dialog/k$a;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/dialog/k$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/samsung/android/app/music/dialog/k$a;->c()Lcom/samsung/android/app/music/dialog/k;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->v0:Landroid/view/View;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/dialog/OneUiDialogFragment;->E0(Lcom/samsung/android/app/musiclibrary/ui/dialog/OneUiDialogFragment;Landroid/view/View;IILjava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference$a;-><init>(Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/k;->N0(Lkotlin/jvm/functions/a;)V

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->s1()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/music/dialog/k$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/e;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    const-string v1, "fragmentManager!!.findFr\u2026og.TAG)\n                }"

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->p1(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method

.method public k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->v0:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->w0:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    :goto_0
    invoke-super {p0}, Landroidx/preference/Preference;->k0()V

    return-void
.end method

.method public final p1(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->v0:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->w0:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3
    new-instance v1, Lcom/samsung/android/app/music/settings/preference/k;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/settings/preference/k;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->w0:Landroid/view/View$OnLayoutChangeListener;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public final r1(Landroid/view/View;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 4

    const v0, 0x1020018

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    instance-of v3, v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final s1()Landroidx/fragment/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->u0:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public final t1(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->u0:Landroidx/fragment/app/FragmentManager;

    return-void
.end method
