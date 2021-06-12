.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubWindow(Landroid/app/Activity;)Landroid/view/Window;
    .locals 3

    .line 95
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSubWindow deprecated from N OS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    if-eqz p0, :cond_2

    .line 103
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->getSubWindow(Landroid/app/Activity;)Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "activity is invalid."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "activity is null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setSubContentView(Landroid/app/Activity;I)V
    .locals 3

    .line 47
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSubContentView deprecated from N OS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    if-eqz p0, :cond_2

    .line 55
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->getSubWindow(Landroid/app/Activity;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->setSubContentView(Landroid/app/Activity;I)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is invalid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public static setSubContentView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 71
    sget-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailSubWindow;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSubContentView deprecated from N OS: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    if-eqz p0, :cond_2

    .line 79
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->getSubWindow(Landroid/app/Activity;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->get()Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/RefActivity;->setSubContentView(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is invalid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method
