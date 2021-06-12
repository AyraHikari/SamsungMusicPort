.class Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypefaceSpan"
.end annotation


# instance fields
.field private a:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    .line 447
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 448
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TypefaceSpan;->a:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagBuilder$TypefaceSpan;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method
