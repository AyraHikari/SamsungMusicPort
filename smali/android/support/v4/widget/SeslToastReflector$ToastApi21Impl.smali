.class Landroid/support/v4/widget/SeslToastReflector$ToastApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/SeslToastReflector$ToastBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SeslToastReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToastApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/SeslToastReflector$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/widget/SeslToastReflector$ToastApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public twMakeText(Landroid/widget/Toast;Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/widget/Toast;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-static {}, Landroid/support/v4/widget/SeslToastReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "twMakeText"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v7

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
