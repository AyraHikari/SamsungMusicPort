.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi16Impl;
.super Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextViewCompatApi16Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLines(Landroid/widget/TextView;)I
    .locals 0

    .line 228
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    return p1
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .locals 0

    .line 233
    invoke-virtual {p1}, Landroid/widget/TextView;->getMinLines()I

    move-result p1

    return p1
.end method
