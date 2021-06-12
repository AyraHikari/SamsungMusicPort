.class Landroid/support/v7/widget/CardViewApi17Impl;
.super Landroid/support/v7/widget/CardViewBaseImpl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v7/widget/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .line 28
    new-instance v0, Landroid/support/v7/widget/CardViewApi17Impl$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/CardViewApi17Impl$1;-><init>(Landroid/support/v7/widget/CardViewApi17Impl;)V

    sput-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method
