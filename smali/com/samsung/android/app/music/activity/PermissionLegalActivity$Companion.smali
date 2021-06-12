.class public final Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/PermissionLegalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;Landroid/app/Activity;ZZZLjava/util/ArrayList;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string p4, "android.permission.READ_PHONE_STATE"

    const-string p5, "android.permission.GET_ACCOUNTS"

    .line 360
    filled-new-array {p2, p4, p5}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p5

    :cond_2
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$Companion;->a(Landroid/app/Activity;ZZZLjava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;ZZZLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "ZZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->b(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move v2, p3

    goto/16 :goto_0

    .line 368
    :cond_0
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_2

    const-string p2, "legal_information_agreed"

    .line 370
    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 374
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p3

    const-string v4, "legal_information_agreed"

    .line 375
    invoke-virtual {p3, v4, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    sget-object v4, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v4

    .line 378
    sget-object v5, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 376
    invoke-virtual {p3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    sget-object v4, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v4

    .line 383
    sget-object v5, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v5

    .line 382
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 380
    invoke-virtual {p3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 387
    sget-object v4, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v4

    .line 389
    sget-object v5, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v5

    .line 388
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 386
    invoke-virtual {p3, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 394
    invoke-static {v0, v3, v2, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 395
    sget-object v5, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v5

    .line 394
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 392
    invoke-virtual {p3, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "PermissionLegalActivity"

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveLegalValueToSettingManager() prevLegalAgreement="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string p2, "legal_version_by_local"

    .line 408
    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 411
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p3

    const-string v1, "legal_version_by_local"

    invoke-virtual {p3, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    const-string p3, "PermissionLegalActivity"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveLegalValueToSettingManager() prevVersion="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {p3, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->d()I

    move-result p3

    if-le p3, p2, :cond_1

    .line 422
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/samsung/android/app/music/activity/PermissionLegalActivity;

    invoke-direct {p2, v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "key_show_legal"

    .line 423
    invoke-virtual {p2, p3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "key_show_permissions"

    .line 424
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "key_permissions"

    .line 425
    check-cast p5, Ljava/io/Serializable;

    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p4, :cond_3

    if-eqz v2, :cond_3

    const/16 p3, 0x2715

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    const/16 p3, 0x2714

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    const/16 p3, 0x2716

    goto :goto_1

    :cond_5
    const/16 p3, 0x2717

    .line 434
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
