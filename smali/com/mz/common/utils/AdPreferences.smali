.class public Lcom/mz/common/utils/AdPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mz/common/utils/AdPreferences;->a:Landroid/content/SharedPreferences;

    const-string v0, "Mezzo_Preference"

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mz/common/utils/AdPreferences;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mz/common/utils/AdPreferences;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mz/common/utils/AdPreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/mz/common/utils/AdPreferences;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/mz/common/utils/AdPreferences;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/mz/common/utils/AdPreferences;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/mz/common/utils/AdPreferences;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
