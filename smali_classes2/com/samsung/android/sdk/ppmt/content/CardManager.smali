.class public Lcom/samsung/android/sdk/ppmt/content/CardManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String; = "CardManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 109
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_0
    const-string v1, "event"

    .line 119
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 126
    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 131
    invoke-static {p2, p3, p4}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 135
    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return p0

    :cond_2
    const/4 p0, 0x0

    .line 132
    :try_start_1
    invoke-virtual {v0, p1, p0, p0, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;-><init>()V

    throw p0

    .line 127
    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] already have the same card"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw p0

    .line 121
    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to insert db. cannot delete previous card"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0

    .line 115
    :cond_5
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to insert db. db null."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw p0

    .line 110
    :cond_6
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string p1, "fail to insert db. invalid mid"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw p0

    .line 106
    :cond_7
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to insert db. ctx null."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException;-><init>()V

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 141
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    invoke-static {p0, v2}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 33
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 36
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string p1, "Error at handle push msg. ctx null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardAppData;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->b()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/content/CardAppData;->d()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    .line 51
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->d(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->e(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p1

    .line 56
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->d(Landroid/content/Context;)V

    .line 57
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->e(Landroid/content/Context;)V

    throw p1

    .line 44
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string p1, "not init sdk"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "test"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_1

    .line 70
    sget-object p3, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Error at insert card. id:"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 75
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 76
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "["

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "] push platform changed. push ignored."

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_PUSH_PLATFORM:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, p1, p4, p2, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_2
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DELIVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, p1, p4, p2, v0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 83
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object p2

    .line 84
    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotAllowedToInsertDBException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 98
    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "["

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "] fail to handle push. invalid card data"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, p1, p4, p2, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 95
    :catch_1
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "["

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "] fail to handle push. not supported type"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, p1, p4, p2, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :catch_2
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "["

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "] fail to handle push. internal error"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, p1, p4, p2, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :catch_3
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "["

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "] fail to handle push. db error"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string p3, "dberror"

    invoke-static {p0, p1, p4, p2, p3}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :catch_4
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to handle push"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;ZZ)V
    .locals 8

    if-nez p0, :cond_0

    .line 360
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string p1, "fail to request incomplete events. ctx null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 365
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string p1, "fail to request incomplete events. dbHandler null."

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 368
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 370
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v3

    .line 372
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 375
    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 376
    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 410
    :cond_3
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 411
    new-instance v3, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v4, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->API_CALL:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 412
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    .line 413
    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    const-string v4, "mid"

    .line 414
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    .line 415
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v2

    .line 416
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v3

    invoke-interface {v3, p0, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto :goto_0

    .line 418
    :cond_4
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_5

    if-eqz p2, :cond_2

    .line 419
    :cond_5
    new-instance v3, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v5, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 420
    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    .line 421
    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    const-string v5, "mid"

    .line 422
    invoke-virtual {v3, v5, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    const-string v3, "targetid"

    .line 423
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    const-string v3, "is_first_display"

    const/4 v4, 0x0

    .line 424
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    const-string v3, "extra_action"

    const-string v4, "display"

    .line 425
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v2

    .line 427
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v3

    invoke-interface {v3, p0, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto/16 :goto_0

    :cond_6
    :goto_1
    const/4 v5, 0x0

    .line 378
    :try_start_0
    invoke-static {p0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v6

    if-eqz p1, :cond_7

    .line 380
    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;)V

    .line 382
    :cond_7
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v7, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 383
    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 384
    :cond_8
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v7, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 385
    new-instance v3, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v6, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 386
    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    .line 387
    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    const-string v6, "extra_action"

    const-string v7, "download_resource"

    .line 388
    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    const-string v6, "mid"

    .line 389
    invoke-virtual {v3, v6, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    const-string v6, "targetid"

    .line 390
    invoke-virtual {v3, v6, v4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v3

    .line 392
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v6

    invoke-interface {v6, p0, v3}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto/16 :goto_0

    .line 394
    :cond_9
    invoke-virtual {v6, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->g(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 406
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] fail to request incomplete events. invalid card data."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v2, v4, v3, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] fail to request incomplete events. unsupported type"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v2, v4, v3, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 400
    :catch_2
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] fail to request incomplete events. db error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v5, "dberror"

    invoke-static {p0, v2, v4, v3, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    :catch_3
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] fail to request incomplete events. internal error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v2, v4, v3, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 158
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 160
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to clear all : db open fail"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 163
    :cond_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/display/DisplayManager;

    move-result-object v2

    .line 168
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_2

    if-lez v3, :cond_2

    .line 170
    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->a(Landroid/content/Context;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to clear all : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return v0

    .line 178
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->a(Ljava/lang/String;)Z

    .line 179
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->k(Ljava/lang/String;)Z

    .line 181
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    .line 182
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_DISMISS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    .line 183
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->b(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    .line 184
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] successfully delete all related data"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const/4 p0, 0x1

    return p0

    .line 154
    :cond_4
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to clear all : invalid params"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/storage/DBHandler;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 263
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->h(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 271
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 272
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    .line 271
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->k()J

    move-result-wide p0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, p2

    sub-long/2addr p0, v2

    cmp-long p2, p0, v0

    if-lez p2, :cond_0

    move-wide v0, p0

    :catch_0
    :cond_0
    const-wide/32 p0, 0x240c8400

    add-long/2addr v0, p0

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 265
    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] isCardOverDated. fail to get received time"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p0

    .line 260
    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] isCardOverDated. invalid params"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance p0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 191
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    const/16 v0, 0x2800

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "event"

    .line 201
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 202
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 205
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    const/16 p1, 0x20

    if-le p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 7

    .line 309
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string v1, "handle update event"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 311
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string v0, "fail to handle update event. ctx null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 316
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string v0, "fail to handle update event. dbhandler null"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Lcom/samsung/android/sdk/ppmt/content/CardState;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    :try_start_0
    invoke-static {p0, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v3

    const/4 v4, 0x0

    .line 324
    invoke-virtual {v3, p0, v4}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 326
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to handle update event. "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 335
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string v1, "fail to check incomplete events. ctx null"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 338
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-nez p0, :cond_1

    .line 340
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    const-string v1, "fail to check incomplete events. dbHandler null."

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v2

    .line 348
    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/content/CardState;->isIncompleteState(Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const/4 p0, 0x1

    return p0

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 12

    .line 213
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 216
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 217
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 220
    :try_start_0
    invoke-static {p0, v3, v0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/storage/DBHandler;)Z

    move-result v4
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 226
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->d(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v4

    .line 227
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/32 v6, 0x5265c00

    const-wide/32 v8, 0x240c8400

    if-eqz v5, :cond_0

    .line 230
    :try_start_1
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] overdated but delete later to send feedback"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v4, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->h(Landroid/content/Context;)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    add-long/2addr v4, v6

    .line 238
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;J)Z

    goto :goto_2

    .line 240
    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 241
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 242
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 251
    :cond_1
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2

    .line 243
    :cond_2
    :goto_1
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] overdated but delete later to send feedback"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    sget-object v5, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v10, 0x0

    invoke-static {p0, v3, v4, v5, v10}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    add-long/2addr v4, v6

    .line 248
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;J)Z

    goto :goto_2

    :catch_0
    move-exception v4

    .line 222
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] fail to delete overdated cards:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 254
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    :cond_5
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 8

    if-eqz p0, :cond_4

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/ppmt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 293
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 297
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 298
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 299
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete unused resource["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/ppmt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->a(Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    :cond_4
    return-void
.end method
