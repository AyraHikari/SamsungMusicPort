.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$AnimatorListener;
    }
.end annotation


# static fields
.field public static final a:Landroid/transition/PathMotion;

.field public static final b:Landroid/graphics/Matrix;

.field private static final c:Ljava/lang/String; = "FractionTransitionUtils"

.field private static final d:Ljava/lang/String;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z

.field private static h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 93
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->g:Z

    .line 143
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->a:Landroid/transition/PathMotion;

    .line 176
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->b:Landroid/graphics/Matrix;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 6
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 34
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 35
    const-class v0, Landroid/view/View;

    const-string v3, "setTransitionAlpha"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->e:Ljava/lang/reflect/Method;

    .line 37
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->e:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->d:Ljava/lang/String;

    const-string v0, "setTransitionAlpha reflection failed!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 9

    const/4 v0, 0x0

    .line 98
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->g:Z

    if-eqz v1, :cond_1

    .line 99
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-nez v1, :cond_0

    .line 100
    const-class v1, Landroid/view/View;

    const-string v6, "setLeftTopRightBottom"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    .line 101
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->f:Ljava/lang/reflect/Method;

    .line 104
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->f:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->g:Z

    if-nez v0, :cond_2

    .line 111
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 107
    :try_start_1
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->g:Z

    .line 108
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->d:Ljava/lang/String;

    const-string v2, "setLeftTopRightBottom reflection failed!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->g:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->g:Z

    if-nez v1, :cond_3

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    :cond_3
    throw v0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 6

    .line 121
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->h:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 122
    const-class v0, Landroid/view/ViewGroup;

    const-string v3, "suppressLayout"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->h:Ljava/lang/reflect/Method;

    .line 124
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->h:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 127
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->d:Ljava/lang/String;

    const-string v0, "suppressLayout reflection failed!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
