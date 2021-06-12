.class public Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->b:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "AppPrefs"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->a:Ljava/util/Set;

    .line 32
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->getKeyValueDLM()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->c:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->getCollectionDLM()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->d:Ljava/lang/String;

    .line 34
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->THREE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->getCollectionDLM()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method private b()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 50
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    .line 52
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    invoke-direct {p0, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 55
    invoke-direct {p0, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 57
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 59
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ""

    .line 63
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 64
    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-class v9, Ljava/lang/Float;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-class v9, Ljava/lang/Long;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-class v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-class v9, Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 68
    :cond_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->c:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 71
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 72
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->e:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 74
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 76
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 65
    :cond_6
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->c:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    const/16 v8, 0x200

    if-le v7, v8, :cond_7

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, ""

    goto :goto_4

    .line 81
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->d:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    :cond_8
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 89
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->b()Ljava/util/List;

    move-result-object v0

    const-string v1, "SASettingPref"

    .line 99
    invoke-direct {p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/SettingReader;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;-><init>()V

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
