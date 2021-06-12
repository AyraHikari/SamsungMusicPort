.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Visibility$DisappearListener;,
        Landroid/support/transition/Visibility$VisibilityInfo;,
        Landroid/support/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 96
    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 96
    iput v0, p0, Landroid/support/transition/Visibility;->mMode:I

    .line 103
    sget-object v0, Landroid/support/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 105
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 108
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p0, p2}, Landroid/support/transition/Visibility;->setMode(I)V

    :cond_0
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 3

    .line 146
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 147
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:parent"

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [I

    .line 150
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 151
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;
    .locals 6

    .line 191
    new-instance v0, Landroid/support/transition/Visibility$VisibilityInfo;

    invoke-direct {v0}, Landroid/support/transition/Visibility$VisibilityInfo;-><init>()V

    const/4 v1, 0x0

    .line 192
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 193
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    .line 194
    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 196
    iget-object v4, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 198
    :cond_0
    iput v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 199
    iput-object v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_1

    .line 201
    iget-object v4, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    iget-object v2, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 203
    iget-object v2, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 205
    :cond_1
    iput v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 206
    iput-object v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 209
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne p1, p2, :cond_2

    iget-object p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object p2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_2

    return-object v0

    .line 213
    :cond_2
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget p2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq p1, p2, :cond_4

    .line 214
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_3

    .line 215
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 216
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 217
    :cond_3
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_8

    .line 218
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 219
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 223
    :cond_4
    iget-object p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    .line 224
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 225
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 226
    :cond_5
    iget-object p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez p1, :cond_8

    .line 227
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 228
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    .line 232
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_7

    .line 233
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 234
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    :cond_7
    if-nez p2, :cond_8

    .line 235
    iget p1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez p1, :cond_8

    .line 236
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 237
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 161
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 156
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 246
    invoke-direct {p0, p2, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 247
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 249
    :cond_0
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_1

    .line 250
    iget v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 253
    :cond_1
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMode()I
    .locals 1

    .line 136
    iget v0, p0, Landroid/support/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 142
    sget-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 465
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 466
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 467
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 472
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object p1

    .line 473
    iget-boolean p2, p1, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p2, :cond_3

    iget p2, p1, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz p2, :cond_2

    iget p1, p1, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 183
    :cond_0
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 184
    iget-object p1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 2

    .line 279
    iget p3, p0, Landroid/support/transition/Visibility;->mMode:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 283
    iget-object p3, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    .line 284
    invoke-virtual {p0, p3, p5}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v1

    .line 286
    invoke-virtual {p0, p3, p5}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object p3

    .line 288
    invoke-direct {p0, v1, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object p3

    .line 289
    iget-boolean p3, p3, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz p3, :cond_1

    return-object v0

    .line 293
    :cond_1
    iget-object p3, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    .line 336
    iget p3, p0, Landroid/support/transition/Visibility;->mMode:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 340
    iget-object p3, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-eqz p4, :cond_2

    .line 341
    iget-object v2, p4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 344
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x4

    if-ne p5, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne p3, v2, :cond_5

    :goto_2
    move-object p3, v1

    goto/16 :goto_6

    .line 385
    :cond_5
    iget-boolean v2, p0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v2, :cond_6

    goto :goto_5

    .line 389
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 388
    invoke-static {p1, p3, v2}, Landroid/support/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_4

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    move-object p3, v2

    :goto_4
    move-object v2, v1

    goto :goto_6

    :cond_8
    if-eqz p3, :cond_c

    .line 352
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_9

    :goto_5
    goto :goto_4

    .line 355
    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_c

    .line 356
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 357
    invoke-virtual {p0, v2, v3}, Landroid/support/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v4

    .line 358
    invoke-virtual {p0, v2, v3}, Landroid/support/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v5

    .line 361
    invoke-direct {p0, v4, v5}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v4

    .line 362
    iget-boolean v4, v4, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v4, :cond_a

    .line 363
    invoke-static {p1, p3, v2}, Landroid/support/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_4

    .line 365
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_b

    .line 366
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    .line 367
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Landroid/support/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    move-object p3, v1

    goto :goto_4

    :cond_c
    move-object p3, v1

    move-object v2, p3

    :goto_6
    const/4 v4, 0x0

    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    .line 397
    iget-object p5, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    .line 398
    aget v1, p5, v4

    .line 399
    aget p5, p5, v3

    .line 400
    new-array v0, v0, [I

    .line 401
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 402
    aget v2, v0, v4

    sub-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 403
    aget v0, v0, v3

    sub-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p3, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 404
    invoke-static {p1}, Landroid/support/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayImpl;

    move-result-object p5

    .line 405
    invoke-interface {p5, p3}, Landroid/support/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 406
    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_d

    .line 408
    invoke-interface {p5, p3}, Landroid/support/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    goto :goto_7

    .line 411
    :cond_d
    new-instance p2, Landroid/support/transition/Visibility$1;

    invoke-direct {p2, p0, p5, p3}, Landroid/support/transition/Visibility$1;-><init>(Landroid/support/transition/Visibility;Landroid/support/transition/ViewGroupOverlayImpl;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_7
    return-object p1

    :cond_e
    if-eqz v2, :cond_10

    .line 422
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p3

    .line 423
    invoke-static {v2, v4}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 424
    invoke-virtual {p0, p1, v2, p2, p4}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 426
    new-instance p2, Landroid/support/transition/Visibility$DisappearListener;

    invoke-direct {p2, v2, p5, v3}, Landroid/support/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 428
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    invoke-static {p1, p2}, Landroid/support/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 430
    invoke-virtual {p0, p2}, Landroid/support/transition/Visibility;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    goto :goto_8

    .line 432
    :cond_f
    invoke-static {v2, p3}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    :goto_8
    return-object p1

    :cond_10
    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setMode(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 125
    iput p1, p0, Landroid/support/transition/Visibility;->mMode:I

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
