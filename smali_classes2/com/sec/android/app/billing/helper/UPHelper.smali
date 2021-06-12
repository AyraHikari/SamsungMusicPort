.class public Lcom/sec/android/app/billing/helper/UPHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_CREDIT_CARD:Ljava/lang/String; = "CREDIT_CARD"

.field public static final ACTION_PAYMENT:Ljava/lang/String; = "PAYMENT"

.field public static final AIDL_RESULT_ERROR:I = 0x3

.field public static final AIDL_RESULT_FAIL:I = 0x2

.field public static final AIDL_RESULT_OK:I = 0x1

.field public static final AIDL_SENDING_RESULT_ERROR:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIDL_SENDING_RESULT_FAIL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIDL_SENDING_RESULT_OK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final API_VERSION:I = 0x4e88
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BILLING_PACKAGE:Ljava/lang/String; = "com.sec.android.app.billing"

.field public static final CHECK_RESULT_DISABLED:I = 0x3

.field public static final CHECK_RESULT_INVALID:I = 0x2

.field public static final CHECK_RESULT_OK:I = 0x0

.field public static final CHECK_RESULT_UNINSTALLED:I = 0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "PACKAGE_NAME"

.field private static final REQUEST_ACTION:Ljava/lang/String; = "REQUEST_ACTION"

.field private static final REQUEST_CODE:Ljava/lang/String; = "REQUEST_CODE"

.field private static final REQUEST_DATA:Ljava/lang/String; = "REQUEST_DATA"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final RESPONSE_INTENT:Ljava/lang/String; = "BILLING_INTENT"

.field private static final RESPONSE_INTENT_EXIST:Ljava/lang/String; = "BILLING_INTENT_EXIST"

.field public static final RESPONSE_MESSAGE:Ljava/lang/String; = "RESPONSE_MESSAGE"

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x3

.field public static final RESULT_ID:Ljava/lang/String; = "ERROR_ID"

.field public static final RESULT_MESSAGE:Ljava/lang/String; = "ERROR_MESSAGE"

.field public static final RESULT_OK:I = 0x1

.field public static final RESULT_PENDING:I = 0x4

.field public static final RESULT_RECEIPT:Ljava/lang/String; = "PAYMENT_RECEITE"

.field public static final RESULT_RECEITE:Ljava/lang/String; = "PAYMENT_RECEITE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_SIGNATURE:Ljava/lang/String; = "SIGNATURE"

.field public static final TAG:Ljava/lang/String; = "UPHelper"

.field public static final UP_CLIENT_ACTIVITY_RESULT_CANCELD:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_ERROR_ID:Ljava/lang/String; = "ERROR_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_ERROR_MESSAGE:Ljava/lang/String; = "ERROR_MESSAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_FAILURE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_OK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_PAYMENT_RECEITE:Ljava/lang/String; = "PAYMENT_RECEITE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_PENDING:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_ACTIVITY_RESULT_SIGNATURE:Ljava/lang/String; = "SIGNATURE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UP_CLIENT_FAIL:I = 0xb

.field public static final UP_CLIENT_OK:I = 0xa

.field public static final UP_CLIENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.billing"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION:I = 0x4e88

.field private static context:Landroid/content/Context; = null

.field private static iBillingService:Lcom/sec/android/app/billing/service/IBillingService; = null

.field private static serviceConnection:Landroid/content/ServiceConnection; = null

.field private static setup:Z = false

.field private static upHelper:Lcom/sec/android/app/billing/helper/UPHelper; = null

.field private static validation:Ljava/lang/String; = "308203863082026ea003020102020452ccda4d300d06092a864886f70d0101050500308184310b3009060355040613024b52311430120603550408130b4b79656f6e6767692d646f3111300f060355040713085375776f6e2d7369310c300a060355040a13034d534331243022060355040b131b5365727669636520506c6174666f726d204465762e2047726f7570311830160603550403130f53616d73756e672042696c6c696e67301e170d3134303130383034353534315a170d3434303130313034353534315a308184310b3009060355040613024b52311430120603550408130b4b79656f6e6767692d646f3111300f060355040713085375776f6e2d7369310c300a060355040a13034d534331243022060355040b131b5365727669636520506c6174666f726d204465762e2047726f7570311830160603550403130f53616d73756e672042696c6c696e6730820122300d06092a864886f70d01010105000382010f003082010a02820101009cb656d610ee3224f331bcbfb1dfbb6ac75470edf14bf91d29c7e580b733d8241e601ccf1aeb75174f5779283f98349adbcfd530c3f91e4a8e90ff884b73c45cb124318e42d236a4c9bb74079237df8c69629f89ec0b8ab0df668178a5fc765185f8f3d5ba38a1da17e231c4c30f774e5aadfedc0b243395af55bb082f22252706e57ab91eaf8a33b0d78817531c18100e5fc3b8f6a7bbab860e59189f0408d0be07d6938476e194b18245c45b01d6eaee7ede7736e49500004ce3fcf95e9e1e53a7b057b4ce8dc62303529b1447fff51087b44339601b2a440feb9cb23a4477644aa49f4243d7b7902d61512c03922d991e397ac5c38edc71fbb643741125150203010001300d06092a864886f70d0101050500038201010008770c18b3fbbf72fa240c2a9223eb2162e2138bdcdb58a83b4337c4616e5e20bb134331896b2bb8a16810636f89758d8b214a2c3e4ec12569c5e031ecc7d55550e96de6ebc9af5f923e5e3ab284a36de00452f0665ade5389f97f3ac04cb03ce01dd4ae90c734775768d3dcfdd3ebddf9f8b508ac42b679c743549dd661cd2816cc5946ae600458e1fe47c16a97c261a0cef21ef48699fde0ddb633cd9b578efead3522bd2b73e01ba72e6e52cb8730439279c0d7e3d07a09e50c22a762cdb91a309a1def9487b703b65dc3c0f6ae908bda8b4cc42aca67f5e84014b041075682fdba50c32bed93fb24c5f8769e308290bbf46ec3cad77231bb39782becdd78"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/billing/service/IBillingService;)V
    .locals 0

    .line 82
    sput-object p0, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    return-void
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .line 79
    sput-boolean p0, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    return-void
.end method

.method static synthetic access$2(Lcom/sec/android/app/billing/helper/UPHelper;ILjava/lang/String;)Landroid/os/Message;
    .locals 0

    .line 475
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 386
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method private static convertObjectToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 508
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "convertObjectToJSONObject"

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 512
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v5, v1, v4

    const/4 v6, 0x1

    .line 517
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 518
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 519
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "CREATOR"

    .line 521
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v7, :cond_7

    .line 526
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 527
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 529
    :cond_2
    instance-of v8, v7, [Ljava/lang/Object;

    if-eqz v8, :cond_6

    .line 530
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 533
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    .line 535
    :goto_1
    array-length v9, v5

    if-lt v8, v9, :cond_3

    .line 542
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 536
    :cond_3
    aget-object v9, v5, v8

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 537
    aget-object v9, v5, v8

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 538
    :cond_4
    aget-object v9, v5, v8

    if-eqz v9, :cond_5

    .line 539
    aget-object v9, v5, v8

    invoke-static {v9}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 546
    :cond_6
    invoke-static {v7}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 492
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "convertObjectToString"

    .line 493
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 498
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "UPHelper"

    const-string v1, "Exception: toJSONString error"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;
    .locals 3

    const-class v0, Lcom/sec/android/app/billing/helper/UPHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "UPHelper"

    const-string v2, "[VERSION:20104]"

    .line 107
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "UPHelper"

    const-string v2, "getInstance"

    .line 108
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->upHelper:Lcom/sec/android/app/billing/helper/UPHelper;

    if-nez v1, :cond_0

    const-string v1, "UPHelper"

    const-string v2, "upHelper null"

    .line 111
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Lcom/sec/android/app/billing/helper/UPHelper;

    invoke-direct {v1, p0}, Lcom/sec/android/app/billing/helper/UPHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->upHelper:Lcom/sec/android/app/billing/helper/UPHelper;

    .line 114
    :cond_0
    sget-object p0, Lcom/sec/android/app/billing/helper/UPHelper;->upHelper:Lcom/sec/android/app/billing/helper/UPHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 106
    monitor-exit v0

    throw p0
.end method

.method private getMessage(ILjava/lang/String;)Landroid/os/Message;
    .locals 2

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "toJSONString"

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE_CODE"

    .line 480
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "RESPONSE_MESSAGE"

    .line 481
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 484
    iput p1, p2, Landroid/os/Message;->what:I

    .line 485
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object p2
.end method

.method private requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 13

    move-object v1, p0

    move v0, p2

    move-object/from16 v2, p3

    move-object/from16 v9, p5

    const-string v3, "UPHelper"

    const-string v4, "[VERSION:20104]"

    .line 387
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UPHelper"

    const-string v4, "requestBillingService"

    .line 388
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "UPHelper"

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "activity = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v5, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", requestCode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", action = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UPHelper"

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "packageName = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "PACKAGE_NAME"

    .line 395
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "REQUEST_CODE"

    .line 396
    invoke-virtual {v4, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "REQUEST_ACTION"

    .line 397
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "REQUEST_DATA"

    move-object/from16 v7, p4

    .line 398
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v6, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    const/4 v10, 0x3

    if-eqz v6, :cond_5

    const-string v6, "UPHelper"

    const-string v7, "iBillingService not null"

    .line 401
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :try_start_0
    sget-object v6, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    const/16 v7, 0x4e88

    const-string v8, ""

    invoke-interface {v6, v7, v4, v8}, Lcom/sec/android/app/billing/service/IBillingService;->requestBilling(ILandroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v6, "UPHelper"

    const-string v7, "responseBundle not null"

    .line 407
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "RESPONSE_CODE"

    .line 409
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "RESPONSE_MESSAGE"

    .line 410
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UPHelper"

    .line 411
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "responseCode = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", responseMessage = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    const-string v6, "UPHelper"

    const-string v7, "responseCode AIDL_RESULT_OK"

    .line 414
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BILLING_INTENT_EXIST"

    .line 416
    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "UPHelper"

    const-string v7, "responseBundle exist"

    .line 417
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "BILLING_INTENT"

    .line 418
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    const-string v6, "UPHelper"

    const-string v7, "responsePendingIntent not null"

    .line 421
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 423
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PACKAGE_NAME"

    .line 424
    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "REQUEST_CODE"

    .line 425
    invoke-virtual {v6, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object v2, p1

    move v4, p2

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 430
    :try_start_2
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    const-string v2, "UPHelper"

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SendIntentException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v10, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "UPHelper"

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AIDL_RESULT_ERROR / "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string v0, "UPHelper"

    const-string v2, "responsePendingIntent null"

    .line 436
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "responsePendingIntent null"

    .line 437
    invoke-direct {p0, v10, v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "UPHelper"

    const-string v2, "AIDL_RESULT_ERROR / responsePendingIntent null"

    .line 438
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2

    const-string v2, "UPHelper"

    const-string v3, "responseCode AIDL_RESULT_FAIL"

    .line 442
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "UPHelper"

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AIDL_RESULT_FAIL / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    if-ne v6, v10, :cond_3

    const-string v0, "UPHelper"

    const-string v2, "responseCode AIDL_RESULT_ERROR"

    .line 446
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0, v10, v7}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "UPHelper"

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AIDL_RESULT_ERROR / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v0, "UPHelper"

    const-string v2, "responseCode default"

    .line 450
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "UPHelper"

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v0, "UPHelper"

    const-string v2, "responseBundle null"

    .line 456
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "responseBundle null"

    .line 457
    invoke-direct {p0, v10, v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "UPHelper"

    const-string v2, "AIDL_RESULT_ERROR / responseBundle null"

    .line 458
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 461
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v2, "UPHelper"

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RemoteException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v10, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "UPHelper"

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AIDL_RESULT_ERROR / "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "UPHelper"

    const-string v2, "iBillingService null"

    .line 468
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "iBillingService null"

    .line 469
    invoke-direct {p0, v10, v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "UPHelper"

    const-string v2, "AIDL_RESULT_ERROR / iBillingService null"

    .line 470
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method private startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 9

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 330
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "startSetupRetry"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setup = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Lcom/sec/android/app/billing/helper/UPHelper$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/billing/helper/UPHelper$2;-><init>(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 350
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.android.app.billing.action.BILLING"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    sget-object p2, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/16 p3, 0x20

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 353
    iget-object p2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 360
    :cond_0
    new-instance p2, Landroid/content/ComponentName;

    iget-object p3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p2, p3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 362
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 p2, 0xb

    .line 365
    :try_start_0
    sget-object p3, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "UPHelper"

    const-string p4, "queryIntentServices not empty"

    .line 366
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object p3, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    sget-object p4, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_1
    const-string p1, "UPHelper"

    const-string p3, "Exception: queryIntentServices empty"

    .line 369
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "queryIntentServices empty error"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p3, "UPHelper"

    const-string p4, "Exception: exception error"

    .line 379
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p2, "UPHelper"

    .line 381
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "UP_CLIENT_FAIL / "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 373
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    const-string p3, "UPHelper"

    const-string p4, "SecurityException: bind SecurityException error"

    .line 374
    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p2, "UPHelper"

    .line 376
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "UP_CLIENT_FAIL / "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "UPHelper"

    const-string p2, "resolveInfo.serviceInfo null"

    .line 354
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    const-string p2, "Resolve failed"

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    const-string p2, "AIDL_RESULT_ERROR / Resolve failed"

    .line 356
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public checkSamsungBilling()I
    .locals 4

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "checkSamsungBilling"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_0
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.billing"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v2, Lcom/sec/android/app/billing/helper/UPHelper;->validation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    const-string v0, "UPHelper"

    const-string v1, "Samsung Billing invalid"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 127
    :cond_0
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.android.app.billing"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v2, :cond_2

    .line 128
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.android.app.billing"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "UPHelper"

    const-string v2, "Samsung Billing OK"

    .line 132
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_0
    const-string v0, "UPHelper"

    const-string v1, "Samsung Billing disabled"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "UPHelper"

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "Samsung Billing uninstalled"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 2

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "dispose"

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    sget-boolean v0, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    if-eqz v0, :cond_1

    const-string v0, "UPHelper"

    const-string v1, "setup true"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "UPHelper"

    const-string v1, "serviceConnection and context not null"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 222
    sput-boolean v0, Lcom/sec/android/app/billing/helper/UPHelper;->setup:Z

    :cond_1
    const/4 v0, 0x0

    .line 224
    sput-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    .line 225
    sput-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public requestBilling(Landroid/app/Activity;IILjava/lang/String;Lcom/sec/android/app/billing/helper/CreditCardData;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p2, "UPHelper"

    const-string p6, "[VERSION:20104]"

    .line 570
    invoke-static {p2, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "UPHelper"

    const-string p6, "deprecated requestBilling Credit Card"

    .line 571
    invoke-static {p2, p6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 572
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/CreditCardData;Landroid/os/Handler;)V

    return-void
.end method

.method public requestBilling(Landroid/app/Activity;IILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p2, "UPHelper"

    const-string p6, "[VERSION:20104]"

    .line 563
    invoke-static {p2, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "UPHelper"

    const-string p6, "deprecated requestBilling Payment"

    .line 564
    invoke-static {p2, p6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 565
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Landroid/os/Handler;)V

    return-void
.end method

.method public requestBilling(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p2, "UPHelper"

    const-string p6, "[VERSION:20104]"

    .line 556
    invoke-static {p2, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "UPHelper"

    const-string p6, "deprecated requestBilling String"

    .line 557
    invoke-static {p2, p6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 558
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/CreditCardData;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "requestBilling Credit Card"

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    const-string v0, "CREDIT_CARD"

    .line 303
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    const-string v0, "UPHelper"

    const-string v1, "activity not null, action valid, CreditCardData not empty"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {p4}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 307
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    sget-object p4, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz p4, :cond_1

    const-string p4, "UPHelper"

    const-string v0, "iBillingService not null"

    .line 314
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p5

    .line 315
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/billing/helper/UPHelper;->requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    const-string p4, "UPHelper"

    const-string v0, "iBillingService null"

    .line 317
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p5

    .line 318
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "UPHelper"

    const-string p2, "jsonData null or empty"

    .line 308
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    const-string p2, "jsonData null or empty"

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    const-string p2, "AIDL_RESULT_ERROR / jsonData null or empty"

    .line 310
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p1, "UPHelper"

    const-string p2, "activity null, (or) action invalid, (or) CreditCardData empty"

    .line 322
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb

    const-string p2, "activity, action, CreditCardData error"

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    const-string p2, "UP_CLIENT_FAIL / activity, action, CreditCardData error"

    .line 324
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    const-string p1, "UPHelper"

    const-string p2, "Exception: Handler null"

    .line 299
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "requestBilling Handler null error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "requestBilling Payment"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    const-string v0, "PAYMENT"

    .line 267
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    const-string v0, "UPHelper"

    const-string v1, "activity not null, action valid, UnifiedPaymentData not empty"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {p4}, Lcom/sec/android/app/billing/helper/UPHelper;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 271
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    sget-object p4, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz p4, :cond_1

    const-string p4, "UPHelper"

    const-string v0, "iBillingService not null"

    .line 278
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p5

    .line 279
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/billing/helper/UPHelper;->requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    const-string p4, "UPHelper"

    const-string v0, "iBillingService null"

    .line 281
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p5

    .line 282
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "UPHelper"

    const-string p2, "jsonData null or empty"

    .line 272
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    const-string p2, "jsonData null or empty"

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    const-string p2, "AIDL_RESULT_ERROR / jsonData null or empty"

    .line 274
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p1, "UPHelper"

    const-string p2, "activity null, (or) action invalid, (or) UnifiedPaymentData empty"

    .line 286
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string p2, "activity, action, UnifiedPaymentData error"

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    const-string p2, "UP_CLIENT_FAIL / activity, action, UnifiedPaymentData error"

    .line 288
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    const-string p1, "UPHelper"

    const-string p2, "Exception: Handler null"

    .line 263
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "requestBilling Handler null error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "requestBilling String"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_3

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    const-string v0, "PAYMENT"

    .line 239
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CREDIT_CARD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UPHelper"

    const-string v1, "activity not null, action valid, jsonData not empty"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz v0, :cond_1

    const-string v0, "UPHelper"

    const-string v1, "iBillingService not null"

    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/billing/helper/UPHelper;->requestSamsungBilling(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    const-string v0, "UPHelper"

    const-string v1, "iBillingService null"

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    const-string p1, "UPHelper"

    const-string p2, "activity null, (or) action invalid, (or) jsonData empty"

    .line 250
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    const-string p2, "activity, action, jsonData error"

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p5, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    const-string p2, "AIDL_RESULT_FAIL / activity, action, jsonData error"

    .line 252
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    const-string p1, "UPHelper"

    const-string p2, "Exception: Handler null"

    .line 235
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "requestBilling Handler null error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startSetup(Landroid/os/Handler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "UPHelper"

    const-string v1, "[VERSION:20104]"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UPHelper"

    const-string v1, "startSetup"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 152
    sget-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->iBillingService:Lcom/sec/android/app/billing/service/IBillingService;

    if-eqz v0, :cond_0

    const-string p1, "UPHelper"

    const-string v0, "iBillingService exists already"

    .line 153
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_0
    new-instance v0, Lcom/sec/android/app/billing/helper/UPHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/billing/helper/UPHelper$1;-><init>(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.billing.action.BILLING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/16 v1, 0xb

    if-eqz v0, :cond_3

    .line 177
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 184
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 189
    :try_start_0
    sget-object v2, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UPHelper"

    const-string v3, "queryIntentServices not empty"

    .line 190
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v2, Lcom/sec/android/app/billing/helper/UPHelper;->context:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/billing/helper/UPHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_2
    const-string v0, "UPHelper"

    const-string v2, "Exception: queryIntentServices empty"

    .line 193
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "queryIntentServices empty error"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "UPHelper"

    const-string v3, "Exception: bind error"

    .line 204
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UP_CLIENT_FAIL / "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const-string v2, "UPHelper"

    const-string v3, "SecurityException: bind SecurityException error"

    .line 198
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UP_CLIENT_FAIL / "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v0, "UPHelper"

    const-string v2, "resolveInfo.serviceInfo null"

    .line 178
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Resolve failed"

    .line 179
    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getMessage(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p1, "UPHelper"

    const-string v0, "UP_CLIENT_FAIL / Resolve failed"

    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string p1, "UPHelper"

    const-string v0, "Exception: Handler null"

    .line 149
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "startSetup Handler null error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
