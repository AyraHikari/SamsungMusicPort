.class public final Lcom/samsung/android/app/music/activity/PermissionLegalActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;,
        Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Lcom/samsung/android/app/music/activity/IPermissionTnC;

.field private h:Lcom/samsung/android/app/music/activity/IPermissionTnC;

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$mShowButtonListener$1;-><init>(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->i:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    return-void
.end method

.method public static final a(Landroid/app/Activity;Z)V
    .locals 8

    sget-object v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1a

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;->a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;Landroid/app/Activity;ZZZLjava/util/ArrayList;ILjava/lang/Object;)V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 12

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f1302da

    .line 185
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1302dc

    .line 186
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1302dd

    .line 187
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    .line 189
    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10047a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    const/4 v9, 0x1

    aput v8, v5, v9

    .line 189
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v10, 0x190

    .line 192
    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 193
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    check-cast v8, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    new-instance v8, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$1;

    invoke-direct {v8, v1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$1;-><init>(Landroid/view/View;)V

    check-cast v8, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v10, 0x118

    .line 199
    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v8, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    new-instance v8, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$2;

    invoke-direct {v8, v1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$2;-><init>(Landroid/view/View;)V

    check-cast v8, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-array v1, v4, [F

    aput v6, v1, v7

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100470

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v1, v9

    .line 206
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v5, 0x46

    .line 210
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0x1d6

    .line 211
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 212
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v7, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    new-instance v7, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$3;

    invoke-direct {v7, v2, v3, p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$3;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    check-cast v7, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 219
    move-object v7, v1

    check-cast v7, Landroid/animation/Animator;

    new-instance v8, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$4;

    invoke-direct {v8, v2, v3, p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$4;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v8}, Landroidx/animation/AnimatorKt;->a(Landroid/animation/Animator;Lkotlin/jvm/functions/Function1;)Landroid/animation/Animator$AnimatorListener;

    .line 206
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    new-array p1, v4, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 225
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 226
    invoke-virtual {p1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 227
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    new-instance v1, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$5;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$legalViewHideAnimate$$inlined$apply$lambda$5;-><init>(Landroid/view/View;Landroid/view/View;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 224
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    check-cast v0, Ljava/lang/Iterable;

    .line 508
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 237
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Lcom/samsung/android/app/music/activity/IPermissionTnC;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->h:Lcom/samsung/android/app/music/activity/IPermissionTnC;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->j:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->j:Z

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Lcom/samsung/android/app/music/activity/IPermissionTnC;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->g:Lcom/samsung/android/app/music/activity/IPermissionTnC;

    return-object p0
.end method

.method private final b(Landroid/view/View;)V
    .locals 11

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f1302da

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1301a6

    .line 244
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v3, 0x0

    .line 246
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "permissionTitleView"

    .line 247
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    const-string v4, "permissionContentView"

    .line 248
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/widget/ScrollView;->setAlpha(F)V

    const/4 v4, 0x2

    .line 250
    new-array v5, v4, [F

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10047e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v3

    const/4 v6, 0x1

    aput p1, v5, v6

    .line 250
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v7, 0xc8

    .line 254
    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0x17c

    .line 255
    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    check-cast v9, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    new-instance v9, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$permissionViewShowAnimate$$inlined$apply$lambda$1;

    invoke-direct {v9, v1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$permissionViewShowAnimate$$inlined$apply$lambda$1;-><init>(Landroid/widget/TextView;)V

    check-cast v9, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 250
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    new-array v5, v4, [F

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10047b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    aput v9, v5, v3

    aput p1, v5, v6

    .line 261
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v5, 0x12c

    .line 265
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0x1d6

    .line 266
    invoke-virtual {p1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    new-instance v3, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$permissionViewShowAnimate$$inlined$apply$lambda$2;

    invoke-direct {v3, v2}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$permissionViewShowAnimate$$inlined$apply$lambda$2;-><init>(Landroid/widget/ScrollView;)V

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-array p1, v4, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 274
    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0x10e

    .line 275
    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    new-instance v3, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$permissionViewShowAnimate$$inlined$apply$lambda$3;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$permissionViewShowAnimate$$inlined$apply$lambda$3;-><init>(Landroid/widget/TextView;)V

    check-cast v3, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-array p1, v4, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 282
    invoke-virtual {p1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v3, 0x118

    .line 283
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 284
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    new-instance v1, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$permissionViewShowAnimate$$inlined$apply$lambda$4;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$permissionViewShowAnimate$$inlined$apply$lambda$4;-><init>(Landroid/widget/ScrollView;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    check-cast v0, Ljava/lang/Iterable;

    .line 510
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 291
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Lcom/samsung/android/app/music/activity/IPermissionTnC;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->h:Lcom/samsung/android/app/music/activity/IPermissionTnC;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;Landroid/view/View;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->c:Landroid/view/View;

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/ViewGroup;
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->e:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    const-string v0, "permissionView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/View;
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "helpButtonClick"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/ViewGroup;
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->d:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    const-string v0, "legalView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/View;
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->c:Landroid/view/View;

    if-nez p0, :cond_0

    const-string v0, "nextButtonShowButtonBackground"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->c:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->setResult(I)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->finish()V

    .line 180
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_show_legal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "key_show_permissions"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "key_permissions"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "PermissionLegalActivity"

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init() needLegal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", needPermissions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v6

    const-string v4, "permissions"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_11

    .line 507
    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    check-cast v3, [Ljava/lang/String;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 86
    invoke-static/range {v6 .. v12}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;ZZLcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILjava/lang/Object;)V

    const v3, 0x7f0401c3

    .line 87
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->setContentView(I)V

    const v3, 0x7f13049f

    .line 89
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.container_legal)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->d:Landroid/view/ViewGroup;

    const v3, 0x7f1304a0

    .line 90
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.container_permission)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->e:Landroid/view/ViewGroup;

    const v3, 0x7f1302d7

    .line 91
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById<View>(R.id.help_button_click)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    .line 92
    iget-object v3, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    if-nez v3, :cond_0

    const-string v4, "helpButtonClick"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const v4, 0x7f1302d8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "none"

    const/4 v5, 0x1

    if-nez p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v7

    :goto_1
    if-eqz v4, :cond_3

    move-object v7, v4

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    const-string v4, "key_help_view_state"

    .line 95
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    :goto_2
    const-string p1, "legal"

    .line 98
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "none"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string p1, "permission"

    .line 105
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const v0, 0x7f0b0156

    if-nez p1, :cond_8

    const-string p1, "none"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    goto :goto_3

    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x7f1302da

    .line 120
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v6, "findViewById<TextView>(R.id.help_page_title)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    .line 121
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const v6, 0x7f0b0155

    .line 122
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "context.getString(R.string.help_page_title)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v5, [Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v2

    .line 121
    array-length p1, v5

    invoke-static {v5, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v6, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    if-nez p1, :cond_7

    const-string v2, "helpButtonClick"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    sget-object v2, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->START:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string p1, "helpButtonText"

    .line 126
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 106
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->d:Landroid/view/ViewGroup;

    if-nez p1, :cond_9

    const-string v4, "legalView"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_9
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 107
    new-instance p1, Lcom/samsung/android/app/music/activity/PermissionImpl;

    .line 108
    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "key_permissions"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "intent.getStringArrayListExtra(KEY_PERMISSIONS)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p1, v4, v5}, Lcom/samsung/android/app/music/activity/PermissionImpl;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 110
    iget-object v4, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->e:Landroid/view/ViewGroup;

    if-nez v4, :cond_a

    const-string v5, "permissionView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 111
    :cond_a
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 112
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/music/activity/PermissionImpl;->a(Landroid/view/ViewGroup;)V

    .line 109
    check-cast p1, Lcom/samsung/android/app/music/activity/IPermissionTnC;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->h:Lcom/samsung/android/app/music/activity/IPermissionTnC;

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    if-nez p1, :cond_b

    const-string v2, "helpButtonClick"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_b
    sget-object v2, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->START:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string p1, "helpButtonText"

    .line 116
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 99
    :cond_c
    :goto_4
    new-instance p1, Lcom/samsung/android/app/music/activity/LegalImpl;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/activity/LegalImpl;-><init>(Landroid/app/Activity;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    const-string v2, "legalView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Landroid/view/ViewGroup;)V

    .line 99
    check-cast p1, Lcom/samsung/android/app/music/activity/IPermissionTnC;

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->g:Lcom/samsung/android/app/music/activity/IPermissionTnC;

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    if-nez p1, :cond_e

    const-string v0, "helpButtonClick"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_e
    sget-object v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->AGREE:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string p1, "helpButtonText"

    .line 103
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0153

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    if-nez p1, :cond_f

    const-string v0, "helpButtonClick"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_f
    new-instance v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;

    invoke-direct {v0, p0, v1, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$onCreate$3;-><init>(Lcom/samsung/android/app/music/activity/PermissionLegalActivity;ZLandroid/widget/TextView;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    return-void

    .line 507
    :cond_10
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 506
    :cond_11
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string v0, "PermissionLegalActivity"

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult() requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", permissions="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object v2, p2

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", grantResults="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p3

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 318
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance p1, Landroid/content/Intent;

    const-string v0, "ACTION_REPORT_DEVICE_ACCESS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "extra_permissions"

    .line 325
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "extra_grant_result"

    .line 326
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 324
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 301
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onResume()V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->g:Lcom/samsung/android/app/music/activity/IPermissionTnC;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->d:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    const-string v2, "legalView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    if-nez v2, :cond_1

    const-string v3, "helpButtonClick"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/activity/IPermissionTnC;->a(Landroid/view/View;Landroid/view/View;)V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->h:Lcom/samsung/android/app/music/activity/IPermissionTnC;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    const-string v2, "permissionView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->f:Landroid/view/View;

    if-nez v2, :cond_4

    const-string v3, "helpButtonClick"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/activity/IPermissionTnC;->a(Landroid/view/View;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v1, "permissionView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_help_view_state"

    const-string v1, "permission"

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "key_help_view_state"

    const-string v1, "legal"

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 296
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStart()V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-nez v0, :cond_0

    const-string v1, "showButtonObserver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->i:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-nez v0, :cond_0

    const-string v1, "showButtonObserver"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 308
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStop()V

    return-void
.end method
