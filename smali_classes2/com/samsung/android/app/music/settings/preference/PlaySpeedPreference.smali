.class public final Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;
.super Lcom/samsung/android/app/music/settings/preference/AbsSeekBarPreference;
.source "PlaySpeedPreference.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/settings/preference/AbsSeekBarPreference<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/preference/AbsSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e1()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->m1()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public f1()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public bridge synthetic g1(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->n1(F)I

    move-result p1

    return p1
.end method

.method public j1(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->o1(I)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object p2

    const-string v0, "play_speed"

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->N(Ljava/lang/String;F)V

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->p1(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, "settings_PlaySpeed"

    .line 4
    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PSCH"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/b;->c()Lcom/samsung/android/app/musiclibrary/ui/analytics/b;

    move-result-object v0

    const-string v1, "401"

    const-string v2, "5004"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l1(Landroid/view/View;Landroid/widget/TextView;I)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->o1(I)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->p1(F)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130313

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m1()Ljava/lang/Float;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->V()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->h:Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f$a;->a()Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;

    move-result-object v0

    const-string v2, "play_speed"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/f;->p(Ljava/lang/String;F)F

    move-result v1

    .line 3
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public n1(F)I
    .locals 1

    const/16 v0, 0xa

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    sub-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public o1(I)Ljava/lang/Float;
    .locals 1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    const/16 v0, 0xa

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public p1(F)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/jvm/internal/c0;->a:Lkotlin/jvm/internal/c0;

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130314

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStr\u2026(R.string.play_speed_msg)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v3, "%.1f"

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "format(format, *args)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p1, v2, v4

    .line 3
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
