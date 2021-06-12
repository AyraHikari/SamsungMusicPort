.class final Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$1;
.super Landroid/transition/PathMotion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 1

    .line 146
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 147
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 148
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method
