.class Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/SeslPerfManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerfManagerApi21Impl"
.end annotation


# static fields
.field protected static mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.os.DVFSHelper"

    .line 23
    sput-object v0, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi21Impl;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onSmoothScrollEvent(Z)Z
    .locals 6

    .line 28
    sget-object v0, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi21Impl;->mClassName:Ljava/lang/String;

    const-string v1, "onSmoothScrollEvent"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v1, v0, v3}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_0
    return v5
.end method
