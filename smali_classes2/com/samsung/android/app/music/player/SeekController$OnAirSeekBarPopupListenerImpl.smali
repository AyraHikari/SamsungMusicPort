.class final Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnAirSeekBarPopupListenerImpl"
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lkotlin/Lazy;

.field private final d:I

.field private e:Z

.field private f:I

.field private g:I

.field private final h:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "seekInfoPopup"

    const-string v4, "getSeekInfoPopup()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/music/player/SeekController$UiUpdater;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiUpdater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->h:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    .line 742
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "activity.applicationContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->b:Landroid/content/Context;

    .line 743
    sget-object p2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl$seekInfoPopup$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl$seekInfoPopup$2;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->c:Lkotlin/Lazy;

    .line 746
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x28

    goto :goto_0

    :cond_0
    const/16 p1, 0x46

    :goto_0
    iput p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->d:I

    return-void
.end method

.method private final b(I)Landroid/view/View;
    .locals 6

    .line 782
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->e:Z

    if-nez v0, :cond_1

    .line 783
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    .line 784
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 785
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->h:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001fd

    .line 786
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 787
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    const/4 v0, 0x1

    .line 788
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->e:Z

    goto :goto_0

    .line 783
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 791
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->h:Lcom/samsung/android/app/music/player/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/SeekController$UiUpdater;->b()J

    move-result-wide v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 792
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->c()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->b:Landroid/content/Context;

    div-long/2addr v0, v2

    invoke-static {v5, v0, v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->c(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 795
    iput p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->g:I

    .line 796
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->c()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 792
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final c(I)I
    .locals 5

    .line 808
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x28

    const/4 v2, 0x0

    if-gez v0, :cond_0

    return v2

    .line 813
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->d:I

    const/4 v4, -0x1

    if-ge p1, v3, :cond_2

    .line 814
    iget p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    if-ne p1, v1, :cond_1

    return v4

    .line 817
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    goto :goto_0

    .line 818
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->d:I

    rsub-int v1, v1, 0x3e8

    if-le p1, v1, :cond_4

    .line 819
    iget p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    return v4

    .line 822
    :cond_3
    iput v1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 825
    :cond_4
    iget v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 829
    rem-int/lit8 p1, p1, 0xa

    mul-int/lit8 v0, p1, -0x1

    goto :goto_0

    .line 831
    :cond_5
    iput v1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final c()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/widget/SeekBar;)Landroid/view/View;
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 761
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->e:Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/widget/SeekBar;I)Landroid/view/View;
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 766
    iput p1, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    .line 767
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/SeekBar;IZ)Landroid/view/View;
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 774
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->b(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    .line 757
    iget v0, p0, Lcom/samsung/android/app/music/player/SeekController$OnAirSeekBarPopupListenerImpl;->g:I

    return v0
.end method
