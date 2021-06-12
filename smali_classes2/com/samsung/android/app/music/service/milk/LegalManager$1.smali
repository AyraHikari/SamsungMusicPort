.class Lcom/samsung/android/app/music/service/milk/LegalManager$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/LegalManager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/LegalInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/LegalManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/LegalManager;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$1;->a:Lcom/samsung/android/app/music/service/milk/LegalManager;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/LegalInfo;)V
    .locals 4

    const-string v0, "LegalManager"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestId [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/LegalInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] , getLegalInfo responseCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/LegalInfo;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/LegalInfo;->getResultCode()I

    move-result v0

    if-nez v0, :cond_4

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/LegalInfo;->getTnc()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/LegalInfo;->getPrivacyPolicy()Ljava/lang/String;

    move-result-object p1

    .line 115
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;Z)V

    .line 116
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    const-string v2, "1"

    .line 117
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;Z)V

    .line 118
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    const-string v2, "1"

    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;Z)V

    const-string v1, "LegalManager"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLegalInfo() | tnc - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pp - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "0"

    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 126
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->c()Z

    .line 129
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$1;->a:Lcom/samsung/android/app/music/service/milk/LegalManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LegalManager;->a(Lcom/samsung/android/app/music/service/milk/LegalManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    sget-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;Z)V

    :cond_2
    if-nez p1, :cond_3

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$1;->a:Lcom/samsung/android/app/music/service/milk/LegalManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->a(Lcom/samsung/android/app/music/service/milk/LegalManager;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 134
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$1;->a:Lcom/samsung/android/app/music/service/milk/LegalManager;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->a(Lcom/samsung/android/app/music/service/milk/LegalManager;Z)Z

    .line 136
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager$1;->a:Lcom/samsung/android/app/music/service/milk/LegalManager;

    .line 137
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->b(Lcom/samsung/android/app/music/service/milk/LegalManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "legal_information"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "LegalManager"

    const-string v0, "requested Legal information"

    .line 139
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "LegalManager"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLegalInformation error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/LegalInfo;->getResultCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    instance-of v0, p1, Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;

    if-eqz v0, :cond_0

    const-string v0, "LegalManager"

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 99
    check-cast p1, Lcom/samsung/android/app/music/model/LegalInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/LegalManager$1;->a(Lcom/samsung/android/app/music/model/LegalInfo;)V

    return-void
.end method
