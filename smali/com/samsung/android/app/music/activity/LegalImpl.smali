.class public final Lcom/samsung/android/app/music/activity/LegalImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/activity/IPermissionTnC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/LegalImpl$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/activity/LegalImpl$Companion;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;

.field private final h:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/LegalImpl;->a:Lcom/samsung/android/app/music/activity/LegalImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 12

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->h:Landroid/app/Activity;

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->h:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->c:Ljava/util/LinkedHashMap;

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->d:Ljava/util/HashMap;

    .line 64
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v7, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    .line 68
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    const v3, 0x7f0b03cc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "context.getString(R.string.terms_of_service)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

    .line 72
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->tnc:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-static {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 73
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :goto_1
    const/4 v5, 0x1

    move-object v1, v7

    .line 67
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 65
    invoke-virtual {p1, v0, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v7, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    .line 79
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    const v3, 0x7f0b00e1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "context.getString(R.stri\u2026_of_personal_information)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information_agree.html"

    .line 83
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-static {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move-object v1, v7

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 76
    invoke-virtual {p1, v0, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v7, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    .line 89
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    const v3, 0x7f0b00e2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "context.getString(R.stri\u2026sonal_information_to_3rd)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information_3rd.html"

    const/4 v5, 0x1

    .line 93
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->privacy_policy_3d:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-static {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    move-object v1, v7

    .line 88
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 86
    invoke-virtual {p1, v0, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->e:Ljava/util/LinkedHashMap;

    .line 98
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 100
    sget-object v0, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v7, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    .line 102
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v2

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    const v4, 0x7f0b0195

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    const v11, 0x7f0b0154

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_marketingagreement.html"

    const/4 v5, 0x0

    .line 105
    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-static {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    move-object v1, v7

    .line 101
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 99
    invoke-virtual {p1, v0, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mobile_data"

    .line 110
    new-instance v7, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    const-string v2, "mobile_data"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    const v4, 0x7f0b0266

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 115
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v10, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    invoke-static {v1, v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "first_use"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    move-object v1, v7

    .line 110
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 108
    invoke-virtual {p1, v0, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->f:Ljava/util/LinkedHashMap;

    .line 120
    new-instance p1, Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;-><init>(Lcom/samsung/android/app/music/activity/LegalImpl;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->g:Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;

    .line 139
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->h:Landroid/app/Activity;

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    if-nez v0, :cond_5

    move-object p1, v10

    :cond_5
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    if-eqz p1, :cond_6

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->g:Lcom/samsung/android/app/music/activity/LegalImpl$activityLifeCycleCallbacks$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 139
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :cond_6
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/LegalImpl;Ljava/lang/String;)I
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x65764c1b

    if-eq v0, v1, :cond_2

    const v1, 0x3bb07a8c

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information_3rd.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_privacy_information_agree.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/LegalImpl;)Landroid/app/Activity;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->h:Landroid/app/Activity;

    return-object p0
.end method

.method private final a(Landroid/text/SpannableString;Ljava/util/LinkedHashMap;)Landroid/text/SpannableString;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableString;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    .line 201
    check-cast p2, Ljava/util/Map;

    .line 400
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz p1, :cond_0

    .line 203
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 204
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 205
    new-instance v3, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;

    invoke-direct {v3, v0, p0, p1}, Lcom/samsung/android/app/music/activity/LegalImpl$setLinkUrlStyle$$inlined$forEach$lambda$1;-><init>(Ljava/util/Map$Entry;Lcom/samsung/android/app/music/activity/LegalImpl;Landroid/text/SpannableString;)V

    const/16 v0, 0x11

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 214
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 213
    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 216
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 218
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 220
    iget-object v4, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f002d

    .line 219
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 218
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 217
    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private final a(Landroid/view/View;)V
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 157
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->e:Ljava/util/LinkedHashMap;

    check-cast v2, Ljava/util/Map;

    .line 392
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    .line 158
    invoke-virtual {v3}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const v2, 0x7f1302dc

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    const v0, 0x7f1302de

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById<TextVi\u2026tional_legal_description)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    new-instance v0, Landroid/text/SpannableString;

    const-string p1, ""

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 176
    :pswitch_0
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const p1, 0x7f0b0188

    .line 177
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "res.getString(R.string.legal_notice_three_item)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v3, "urlList.keys"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 399
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 176
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 175
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 399
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 398
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :pswitch_1
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const p1, 0x7f0b0189

    .line 172
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "res.getString(R.string.legal_notice_two_item)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v3, "urlList.keys"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 397
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 171
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 170
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 397
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :pswitch_2
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const p1, 0x7f0b0187

    .line 166
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "res.getString(R.string.legal_notice_one_item)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v3, "urlList.keys"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 395
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 165
    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 164
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 395
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Landroid/text/SpannableString;Ljava/util/LinkedHashMap;)Landroid/text/SpannableString;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const-string p1, "LegalImpl"

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMandatoryLegalView() | mandatoryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/activity/LegalImpl;Ljava/util/HashMap;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->d:Ljava/util/HashMap;

    return-void
.end method

.method private final a(Z)V
    .locals 5

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->c:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "it"

    .line 334
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 336
    :goto_0
    sget-object v2, Lcom/samsung/android/app/music/fcm/smp/SmpManager;->a:Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/music/fcm/smp/SmpManager$Companion;->a(Landroid/content/Context;Z)V

    .line 338
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    const-string v3, "settigns_allowPushNotifications"

    if-eqz v0, :cond_1

    const-string v4, "On"

    goto :goto_1

    :cond_1
    const-string v4, "Off"

    .line 337
    :goto_1
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    .line 348
    sget-object v3, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->legal_marketing_agreed:Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/legal/LegalUiManager$LegalType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "push_notification"

    .line 349
    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    .line 353
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_2

    :cond_2
    const-string v0, "0"

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/HashMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method private final b()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->c:Ljava/util/LinkedHashMap;

    const-string v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 361
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "mobile_data"

    const-string v3, "it"

    .line 362
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v0, 0x7f1302df

    .line 239
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.optional_legal_item)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    const v0, 0x7f1302e0

    .line 240
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v0, "view.findViewById(R.id.optional_agree_all)"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, v6, Lcom/samsung/android/app/music/activity/LegalImpl;->f:Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    .line 402
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;

    .line 243
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    iget-object v4, v6, Lcom/samsung/android/app/music/activity/LegalImpl;->h:Landroid/app/Activity;

    const v5, 0x7f0400bf

    invoke-static {v4, v5, v8, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    const v4, 0x7f13006b

    .line 247
    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 248
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->b()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_4

    .line 403
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 405
    new-array v13, v2, [Ljava/lang/Object;

    new-instance v14, Landroid/text/style/StyleSpan;

    invoke-direct {v14, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    aput-object v14, v13, v3

    .line 406
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    .line 408
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v15, Landroid/text/style/UnderlineSpan;

    invoke-direct {v15}, Landroid/text/style/UnderlineSpan;-><init>()V

    aput-object v15, v2, v3

    .line 409
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->a()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 411
    array-length v3, v2

    move-object/from16 v17, v10

    const/4 v1, 0x0

    :goto_3
    const/16 v10, 0x11

    if-ge v1, v3, :cond_2

    move/from16 v18, v3

    aget-object v3, v2, v1

    move-object/from16 v19, v2

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v5, v3, v15, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v18

    move-object/from16 v2, v19

    goto :goto_3

    .line 413
    :cond_2
    array-length v1, v13

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_3

    aget-object v3, v13, v2

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    invoke-virtual {v5, v3, v14, v15, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 415
    :cond_3
    new-instance v1, Landroid/text/SpannedString;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v1, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    new-instance v1, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;

    invoke-direct {v1, v0, v6, v8, v9}, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$1;-><init>(Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;Lcom/samsung/android/app/music/activity/LegalImpl;Landroid/view/ViewGroup;Landroid/view/View;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_4
    move-object/from16 v17, v10

    .line 260
    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/LegalImpl$Companion$LegalItemData;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    move-object/from16 v17, v10

    .line 264
    :goto_5
    iget-object v0, v6, Lcom/samsung/android/app/music/activity/LegalImpl;->c:Ljava/util/LinkedHashMap;

    move-object v10, v0

    check-cast v10, Ljava/util/Map;

    const v0, 0x7f130170

    .line 265
    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroid/widget/CheckBox;

    .line 266
    new-instance v15, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;

    move-object v0, v15

    move-object v1, v14

    move-object v2, v11

    move-object/from16 v3, p0

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$forEach$lambda$2;-><init>(Landroid/widget/CheckBox;Ljava/lang/String;Lcom/samsung/android/app/music/activity/LegalImpl;Landroid/view/ViewGroup;Landroid/view/View;)V

    check-cast v15, Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "itemView.findViewById<Ch\u2026  }\n                    }"

    .line 265
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-interface {v10, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_6
    move-object/from16 v17, v10

    :goto_6
    move-object/from16 v10, v17

    goto/16 :goto_0

    :cond_7
    const-string v0, "LegalImpl"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initOptionalLegalView() | optionalLegalDataList.size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/samsung/android/app/music/activity/LegalImpl;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, v6, Lcom/samsung/android/app/music/activity/LegalImpl;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const v1, 0x7f1302dd

    .line 289
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    const/4 v3, 0x0

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    if-lez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_9

    :cond_a
    const/16 v3, 0x8

    :goto_9
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    if-le v0, v2, :cond_c

    const/4 v0, 0x0

    .line 294
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f130170

    .line 295
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 299
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100471

    const v4, 0x3fa66666    # 1.3f

    .line 298
    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IF)F

    move-result v1

    .line 296
    invoke-virtual {v0, v2, v1}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 303
    new-instance v1, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;

    invoke-direct {v1, v0, v6}, Lcom/samsung/android/app/music/activity/LegalImpl$initOptionalLegalView$$inlined$run$lambda$1;-><init>(Landroid/widget/CheckBox;Lcom/samsung/android/app/music/activity/LegalImpl;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->c:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/activity/LegalImpl;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->f:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    .line 321
    invoke-static {v0}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a(Z)Z

    .line 322
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    .line 323
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Z)V

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/LegalImpl;->b()V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    const-string v1, "1"

    const-string v2, "1"

    const/4 v3, 0x0

    .line 327
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_REPORT_DEVICE_ACCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->h:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "button"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->d:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map;

    .line 417
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "optionalLegalDataList[data.key]!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1302da

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "parent.findViewById<Text\u2026ew>(R.id.help_page_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 146
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    const v2, 0x7f0b0155

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.help_page_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/music/activity/LegalImpl;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 146
    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->a(Landroid/view/View;)V

    .line 150
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/LegalImpl;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method
