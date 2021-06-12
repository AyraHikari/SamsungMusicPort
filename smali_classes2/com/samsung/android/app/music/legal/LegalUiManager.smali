.class public Lcom/samsung/android/app/music/legal/LegalUiManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;
    }
.end annotation


# direct methods
.method public static a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 88
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "LegalUiManager"

    const-string p1, "do not support set legal type"

    .line 91
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 4

    .line 27
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "legal_information_agreed"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v3, "legal_version_by_local"

    .line 31
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;)Z
    .locals 2

    .line 96
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "LegalUiManager"

    const-string v0, "do not support agreed LegalType"

    .line 99
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Z)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 72
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "legal_information_agreed"

    .line 73
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "legal_version_by_local"

    .line 79
    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    :goto_0
    return v2
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 47
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "legal_information_agreed"

    return-object v0

    :cond_0
    const-string v0, "legal_version_by_local"

    return-object v0
.end method

.method public static c()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 60
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v2, "legal_information_agreed"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "LegalUiManager"

    const-string v2, "do not support setLegalDisAgreed"

    .line 64
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
