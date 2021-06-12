.class public Landroid/support/v4/view/inputmethod/SeslInputMethodManagerReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
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
    .locals 1

    .line 15
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Landroid/support/v4/view/inputmethod/SeslInputMethodManagerReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccessoryKeyboardState(Landroid/view/inputmethod/InputMethodManager;)I
    .locals 4

    .line 18
    sget-object v0, Landroid/support/v4/view/inputmethod/SeslInputMethodManagerReflector;->mClass:Ljava/lang/Class;

    const-string v1, "isAccessoryKeyboardState"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 21
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v2
.end method
