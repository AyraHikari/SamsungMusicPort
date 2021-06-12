.class Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;->buildNotice(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;Landroid/content/Context;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;->b:Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$1$2;->a:Landroid/content/Context;

    const-string v0, "http://cdn-su.glb.samsungmilkradio.com/static/kor/sm_tnc.html"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
