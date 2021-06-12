.class public Landroid/support/v4/widget/SeslToastReflector;
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
        Landroid/support/v4/widget/SeslToastReflector$ToastApi21Impl;,
        Landroid/support/v4/widget/SeslToastReflector$ToastBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/SeslToastReflector$ToastBaseImpl;

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
    .locals 2

    .line 16
    const-class v0, Landroid/widget/Toast;

    sput-object v0, Landroid/support/v4/widget/SeslToastReflector;->mClass:Ljava/lang/Class;

    .line 37
    new-instance v0, Landroid/support/v4/widget/SeslToastReflector$ToastApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslToastReflector$ToastApi21Impl;-><init>(Landroid/support/v4/widget/SeslToastReflector$1;)V

    sput-object v0, Landroid/support/v4/widget/SeslToastReflector;->IMPL:Landroid/support/v4/widget/SeslToastReflector$ToastBaseImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 15
    sget-object v0, Landroid/support/v4/widget/SeslToastReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static twMakeText(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/widget/Toast;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    sget-object v0, Landroid/support/v4/widget/SeslToastReflector;->IMPL:Landroid/support/v4/widget/SeslToastReflector$ToastBaseImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/widget/SeslToastReflector$ToastBaseImpl;->twMakeText(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
