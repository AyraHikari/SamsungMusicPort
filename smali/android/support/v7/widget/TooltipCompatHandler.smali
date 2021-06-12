.class Landroid/support/v7/widget/TooltipCompatHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final HOVER_HIDE_TIMEOUT_MS:J = 0x3a98L

.field private static final HOVER_HIDE_TIMEOUT_SHORT_MS:J = 0xbb8L

.field private static final LONG_CLICK_HIDE_TIMEOUT_MS:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "TooltipCompatHandler"

.field private static mIsForceActionBarX:Z

.field private static mIsForceBelow:Z

.field private static sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

.field private static sIsCustomTooltipPosition:Z

.field private static sIsTooltipNull:Z

.field private static sLayoutDirection:I

.field private static sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

.field private static sPosX:I

.field private static sPosY:I


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private mAnchorX:I

.field private mAnchorY:I

.field private mFromTouch:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mIsSPenPointChanged:Z

.field private mIsShowRunnablePostDelayed:Z

.field private mPopup:Landroid/support/v7/widget/TooltipPopup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/support/v7/widget/TooltipCompatHandler$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/TooltipCompatHandler$1;-><init>(Landroid/support/v7/widget/TooltipCompatHandler;)V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/support/v7/widget/TooltipCompatHandler$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/TooltipCompatHandler$2;-><init>(Landroid/support/v7/widget/TooltipCompatHandler;)V

    iput-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsSPenPointChanged:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsShowRunnablePostDelayed:Z

    .line 146
    iput-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 147
    iput-object p2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    .line 149
    iget-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 150
    iget-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/TooltipCompatHandler;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/support/v7/widget/TooltipCompatHandler;->show(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/TooltipCompatHandler;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    return-void
.end method

.method private cancelPendingShow()V
    .locals 2

    .line 330
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private hide()V
    .locals 3

    .line 292
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    .line 293
    sput-object v1, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    .line 294
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/TooltipPopup;->hide()V

    .line 296
    iput-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    .line 299
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsShowRunnablePostDelayed:Z

    .line 303
    sget-object v2, Landroid/support/v7/widget/TooltipCompatHandler;->sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-ne v2, p0, :cond_2

    .line 304
    invoke-static {v1}, Landroid/support/v7/widget/TooltipCompatHandler;->setPendingHandler(Landroid/support/v7/widget/TooltipCompatHandler;)V

    .line 306
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 309
    sput v0, Landroid/support/v7/widget/TooltipCompatHandler;->sPosX:I

    .line 310
    sput v0, Landroid/support/v7/widget/TooltipCompatHandler;->sPosY:I

    .line 311
    sput-boolean v0, Landroid/support/v7/widget/TooltipCompatHandler;->sIsTooltipNull:Z

    .line 312
    sput-boolean v0, Landroid/support/v7/widget/TooltipCompatHandler;->sIsCustomTooltipPosition:Z

    return-void
.end method

.method private scheduleShow()V
    .locals 4

    .line 326
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mShowRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static setPendingHandler(Landroid/support/v7/widget/TooltipCompatHandler;)V
    .locals 1

    .line 316
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {v0}, Landroid/support/v7/widget/TooltipCompatHandler;->cancelPendingShow()V

    .line 319
    :cond_0
    sput-object p0, Landroid/support/v7/widget/TooltipCompatHandler;->sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    .line 320
    sget-object p0, Landroid/support/v7/widget/TooltipCompatHandler;->sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-eqz p0, :cond_1

    .line 321
    sget-object p0, Landroid/support/v7/widget/TooltipCompatHandler;->sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->scheduleShow()V

    :cond_1
    return-void
.end method

.method public static setTooltipForceActionBarPosX(Z)V
    .locals 0

    .line 358
    sput-boolean p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceActionBarX:Z

    return-void
.end method

.method public static setTooltipForceBelow(Z)V
    .locals 0

    .line 354
    sput-boolean p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceBelow:Z

    return-void
.end method

.method public static setTooltipNull(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 350
    sput-boolean p0, Landroid/support/v7/widget/TooltipCompatHandler;->sIsTooltipNull:Z

    return-void
.end method

.method public static setTooltipPosition(III)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 341
    sput p2, Landroid/support/v7/widget/TooltipCompatHandler;->sLayoutDirection:I

    .line 342
    sput p0, Landroid/support/v7/widget/TooltipCompatHandler;->sPosX:I

    .line 343
    sput p1, Landroid/support/v7/widget/TooltipCompatHandler;->sPosY:I

    const/4 p0, 0x1

    .line 344
    sput-boolean p0, Landroid/support/v7/widget/TooltipCompatHandler;->sIsCustomTooltipPosition:Z

    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "TooltipCompatHandler"

    const-string p1, "view is null"

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 124
    :cond_0
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sPendingHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    iget-object v0, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 125
    invoke-static {v1}, Landroid/support/v7/widget/TooltipCompatHandler;->setPendingHandler(Landroid/support/v7/widget/TooltipCompatHandler;)V

    .line 128
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    sget-object p1, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-eqz p1, :cond_2

    sget-object p1, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    iget-object p1, p1, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne p1, p0, :cond_2

    .line 130
    sget-object p1, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {p1}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    .line 132
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 134
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    .line 136
    :cond_3
    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    iget-object v0, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-ne v0, p0, :cond_4

    .line 138
    sget-object p0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    goto :goto_0

    .line 140
    :cond_4
    new-instance v0, Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/TooltipCompatHandler;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private show(Z)V
    .locals 18
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 242
    iget-object v2, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 245
    invoke-static {v2}, Landroid/support/v7/widget/TooltipCompatHandler;->setPendingHandler(Landroid/support/v7/widget/TooltipCompatHandler;)V

    .line 246
    sget-object v2, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    if-eqz v2, :cond_1

    .line 247
    sget-object v2, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    invoke-direct {v2}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    .line 249
    :cond_1
    sput-object v0, Landroid/support/v7/widget/TooltipCompatHandler;->sActiveHandler:Landroid/support/v7/widget/TooltipCompatHandler;

    .line 251
    iput-boolean v1, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    .line 253
    new-instance v2, Landroid/support/v7/widget/TooltipPopup;

    iget-object v3, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/TooltipPopup;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    .line 254
    sget-boolean v2, Landroid/support/v7/widget/TooltipCompatHandler;->sIsCustomTooltipPosition:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 255
    sput-boolean v3, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceBelow:Z

    .line 256
    sput-boolean v3, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceActionBarX:Z

    .line 257
    sget-boolean v2, Landroid/support/v7/widget/TooltipCompatHandler;->sIsTooltipNull:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 258
    :cond_3
    :goto_0
    iget-object v1, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    sget v2, Landroid/support/v7/widget/TooltipCompatHandler;->sPosX:I

    sget v4, Landroid/support/v7/widget/TooltipCompatHandler;->sPosY:I

    sget v5, Landroid/support/v7/widget/TooltipCompatHandler;->sLayoutDirection:I

    iget-object v6, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/support/v7/widget/TooltipPopup;->showActionItemTooltip(IIILjava/lang/CharSequence;)V

    .line 259
    sput-boolean v3, Landroid/support/v7/widget/TooltipCompatHandler;->sIsCustomTooltipPosition:Z

    goto :goto_2

    .line 264
    :cond_4
    sget-boolean v1, Landroid/support/v7/widget/TooltipCompatHandler;->sIsTooltipNull:Z

    if-nez v1, :cond_9

    .line 265
    sget-boolean v1, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceBelow:Z

    if-nez v1, :cond_6

    sget-boolean v1, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceActionBarX:Z

    if-eqz v1, :cond_5

    goto :goto_1

    .line 268
    :cond_5
    sput-boolean v3, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceBelow:Z

    .line 269
    sput-boolean v3, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceActionBarX:Z

    .line 270
    iget-object v4, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    iget-object v5, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget v6, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorX:I

    iget v7, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorY:I

    iget-boolean v8, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    iget-object v9, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/widget/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    goto :goto_2

    .line 266
    :cond_6
    :goto_1
    iget-object v10, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    iget-object v11, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget v12, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorX:I

    iget v13, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorY:I

    iget-boolean v14, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    iget-object v15, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mTooltipText:Ljava/lang/CharSequence;

    sget-boolean v16, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceBelow:Z

    sget-boolean v17, Landroid/support/v7/widget/TooltipCompatHandler;->mIsForceActionBarX:Z

    invoke-virtual/range {v10 .. v17}, Landroid/support/v7/widget/TooltipPopup;->show(Landroid/view/View;IIZLjava/lang/CharSequence;ZZ)V

    .line 277
    :goto_2
    iget-object v1, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 279
    iget-boolean v1, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v1, :cond_7

    const-wide/16 v1, 0x9c4

    goto :goto_3

    .line 281
    :cond_7
    iget-object v1, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const-wide/16 v1, 0xbb8

    .line 283
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_3

    :cond_8
    const-wide/16 v1, 0x3a98

    .line 285
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 287
    :goto_3
    iget-object v3, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 288
    iget-object v3, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v7/widget/TooltipCompatHandler;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    return-void
.end method

.method private showPenPointEffect(Landroid/view/MotionEvent;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_0

    .line 371
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_MORE()I

    move-result p1

    .line 370
    invoke-static {p1}, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->setPointerIconType(I)V

    const/4 p1, 0x1

    .line 372
    iput-boolean p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsSPenPointChanged:Z

    goto :goto_0

    .line 373
    :cond_0
    iget-boolean p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsSPenPointChanged:Z

    if-eqz p1, :cond_1

    .line 375
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result p1

    .line 374
    invoke-static {p1}, Landroid/support/v4/hardware/input/SeslInputManagerReflector;->setPointerIconType(I)V

    .line 376
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsSPenPointChanged:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private update(Ljava/lang/CharSequence;)V
    .locals 1

    .line 335
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/TooltipPopup;->updateContent(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method isSPenHoveringSettingsEnabled()Z
    .locals 3

    .line 383
    invoke-static {}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v0

    .line 384
    iget-object v1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mFromTouch:Z

    if-eqz v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    if-nez v0, :cond_1

    const-string p1, "TooltipCompatHandler"

    const-string p2, "TooltipCompat Anchor view is null"

    .line 168
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x4002

    .line 174
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x18

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->isSPenHoveringSettingsEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 175
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v4, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 179
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result p2

    .line 178
    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    .line 177
    invoke-static {p1, v3, p2}, Landroid/support/v4/view/SeslViewReflector;->semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V

    :cond_2
    return v1

    .line 185
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    .line 186
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "accessibility"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 187
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 190
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "TooltipCompatHandler"

    const-string v5, "MotionEvent.ACTION_HOVER_EXIT : hide SeslTooltipPopup"

    .line 213
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v4, :cond_5

    .line 215
    invoke-direct {p0, p2, v1}, Landroid/support/v7/widget/TooltipCompatHandler;->showPenPointEffect(Landroid/view/MotionEvent;Z)V

    .line 217
    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v4, :cond_6

    iget-object p2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 221
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result p2

    .line 220
    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    .line 219
    invoke-static {p1, v3, p2}, Landroid/support/v4/view/SeslViewReflector;->semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V

    .line 223
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    goto :goto_0

    .line 192
    :pswitch_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v4, :cond_9

    iget-object p2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    if-nez p2, :cond_9

    if-eqz v0, :cond_9

    .line 196
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_MORE()I

    move-result p2

    .line 195
    invoke-static {v0, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p2

    .line 194
    invoke-static {p1, v3, p2}, Landroid/support/v4/view/SeslViewReflector;->semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V

    goto :goto_0

    .line 200
    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mPopup:Landroid/support/v7/widget/TooltipPopup;

    if-nez p1, :cond_9

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorX:I

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorY:I

    .line 203
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    if-ge p1, v4, :cond_8

    .line 204
    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/TooltipCompatHandler;->showPenPointEffect(Landroid/view/MotionEvent;Z)V

    .line 206
    :cond_8
    iget-boolean p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsShowRunnablePostDelayed:Z

    if-nez p1, :cond_9

    .line 207
    invoke-static {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->setPendingHandler(Landroid/support/v7/widget/TooltipCompatHandler;)V

    .line 208
    iput-boolean v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mIsShowRunnablePostDelayed:Z

    :cond_9
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorX:I

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/TooltipCompatHandler;->mAnchorY:I

    const/4 p1, 0x1

    .line 157
    invoke-direct {p0, p1}, Landroid/support/v7/widget/TooltipCompatHandler;->show(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Landroid/support/v7/widget/TooltipCompatHandler;->hide()V

    return-void
.end method
