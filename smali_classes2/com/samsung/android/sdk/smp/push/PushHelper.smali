.class public Lcom/samsung/android/sdk/smp/push/PushHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PushHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/sdk/smp/push/PushHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "no-requestid"

    return-object p0

    :cond_0
    const-string v0, "^(smp)-[a-zA-Z0-9]*-[0-9]*"

    .line 99
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "spp"

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "@"

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x40

    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/samsung/android/sdk/smp/push/PushHelper;->b()Lcom/samsung/android/sdk/smp/push/PushPlatformRegistrable;

    move-result-object v0

    .line 27
    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/smp/push/PushPlatformRegistrable;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/push/PushHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->h(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b()Lcom/samsung/android/sdk/smp/push/PushPlatformRegistrable;
    .locals 4

    .line 49
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/samsung/android/sdk/smp/push/FcmRegister;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/push/FcmRegister;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, -0x1

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x86b

    if-eq v2, v3, :cond_2

    const v3, 0x10489

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "CHN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 60
    sget-object v0, Lcom/samsung/android/sdk/smp/push/PushHelper;->a:Ljava/lang/String;

    const-string v1, "type : fcm"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/samsung/android/sdk/smp/push/FcmRegister;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/push/FcmRegister;-><init>()V

    return-object v0

    .line 57
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/smp/push/PushHelper;->a:Ljava/lang/String;

    const-string v1, "type : spp"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/samsung/android/sdk/smp/push/SppRegister;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/push/SppRegister;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 75
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    const-string v1, "fcm"

    .line 76
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/smp/common/GlobalData;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 81
    new-instance v2, Lcom/samsung/android/sdk/smp/push/PushHelper$1;

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/sdk/smp/push/PushHelper$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->a(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method
