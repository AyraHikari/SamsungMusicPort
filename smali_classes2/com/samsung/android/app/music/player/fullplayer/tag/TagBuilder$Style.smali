.class Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Style"
.end annotation


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->b:I

    .line 196
    iput v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$1;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
    .locals 0

    .line 219
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->b:I

    return-object p0
.end method

.method a(Landroid/graphics/Typeface;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a:Landroid/graphics/Typeface;

    return-object p0
.end method

.method a(Landroid/text/Spannable;IILjava/lang/CharSequence;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 284
    iget v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->h:I

    const/16 v5, 0x21

    if-lez v4, :cond_0

    iget v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->i:I

    if-lez v4, :cond_0

    .line 285
    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;

    iget v8, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->b:I

    iget v9, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->h:I

    iget v10, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->i:I

    iget v11, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->j:I

    iget v12, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->k:I

    iget v13, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->l:I

    iget v14, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->m:I

    iget v15, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->f:I

    iget v7, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->g:I

    move-object v6, v4

    move/from16 v16, v7

    move-object/from16 v7, p4

    invoke-direct/range {v6 .. v16}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$RoundSizeBackgroundSpan;-><init>(Ljava/lang/CharSequence;IIIIIIIII)V

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 288
    :cond_0
    iget v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->b:I

    if-eqz v4, :cond_1

    .line 289
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    iget v6, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->b:I

    invoke-direct {v4, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 292
    :cond_1
    :goto_0
    iget v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->c:I

    if-eqz v4, :cond_2

    .line 293
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v6, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->c:I

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 296
    :cond_2
    iget-object v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a:Landroid/graphics/Typeface;

    if-eqz v4, :cond_3

    .line 297
    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TypefaceSpan;

    iget-object v6, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->a:Landroid/graphics/Typeface;

    invoke-direct {v4, v6}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 300
    :cond_3
    iget v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->d:I

    if-nez v4, :cond_4

    iget v4, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->e:I

    if-eqz v4, :cond_5

    .line 301
    :cond_4
    new-instance v4, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;

    iget v6, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->d:I

    iget v7, v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->e:I

    move-object/from16 v8, p4

    invoke-direct {v4, v8, v6, v7}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TextPaddingSpan;-><init>(Ljava/lang/CharSequence;II)V

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    return-void
.end method

.method b(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
    .locals 0

    .line 229
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->h:I

    return-object p0
.end method

.method c(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
    .locals 0

    .line 234
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->i:I

    return-object p0
.end method

.method d(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
    .locals 0

    .line 239
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->d:I

    return-object p0
.end method

.method e(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
    .locals 0

    .line 244
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->e:I

    return-object p0
.end method

.method f(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
    .locals 0

    .line 249
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->f:I

    return-object p0
.end method

.method g(I)Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;
    .locals 0

    .line 254
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$Style;->g:I

    return-object p0
.end method
