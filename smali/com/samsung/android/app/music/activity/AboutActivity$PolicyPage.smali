.class Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolicyPage"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I

.field final d:I


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->c:I

    .line 84
    iput p2, p0, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->d:I

    .line 85
    iput-object p3, p0, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->b:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->a:Ljava/lang/String;

    return-void
.end method

.method static a(IILjava/lang/String;)Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;->a(IILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;

    move-result-object p0

    return-object p0
.end method

.method static a(IILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;
    .locals 1

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/AboutActivity$PolicyPage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
