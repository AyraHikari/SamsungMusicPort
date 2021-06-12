.class public Landroid/support/v4/widget/SeslTextViewReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi24Impl;,
        Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi21Impl;,
        Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    const-class v0, Landroid/widget/TextView;

    sput-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->mClass:Ljava/lang/Class;

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 111
    new-instance v0, Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi24Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi24Impl;-><init>(Landroid/support/v4/widget/SeslTextViewReflector$1;)V

    sput-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->IMPL:Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewApi21Impl;-><init>(Landroid/support/v4/widget/SeslTextViewReflector$1;)V

    sput-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->IMPL:Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 18
    sget-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_SEM_AUTOFILL_ID(Landroid/widget/TextView;)I
    .locals 1
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    sget-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->IMPL:Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;->getField_SEM_AUTOFILL_ID(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static getField_mSingleLine(Landroid/widget/TextView;)Z
    .locals 1
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 146
    sget-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->IMPL:Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;->getField_mSingleLine(Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method

.method public static isTextSelectionProgressing()Z
    .locals 1

    .line 155
    sget-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->IMPL:Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;->isTextSelectionProgressing()Z

    move-result v0

    return v0
.end method

.method public static isTextViewHovered()Z
    .locals 1

    .line 164
    sget-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->IMPL:Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;->isTextViewHovered()Z

    move-result v0

    return v0
.end method

.method public static semSetActionModeMenuItemEnabled(Landroid/widget/TextView;IZ)V
    .locals 1
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 126
    sget-object v0, Landroid/support/v4/widget/SeslTextViewReflector;->IMPL:Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/widget/SeslTextViewReflector$TextViewBaseImpl;->semSetActionModeMenuItemEnabled(Landroid/widget/TextView;IZ)V

    return-void
.end method
