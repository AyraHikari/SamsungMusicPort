.class public Lcom/samsung/android/view/animation/SineOut80;
.super Landroid/view/animation/PathInterpolator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x3e2e147b    # 0.17f

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    invoke-direct {p0, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
