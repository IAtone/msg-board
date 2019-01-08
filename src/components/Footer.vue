<template>
    <div class="footer">
        <p>{{ msg.footer }}</p>
    </div>
</template>

<script>
export default {
    data() {
        return {
            
        }
    },
    props: {
        msg: Object
    }
}
</script>

<style>
.footer {
    margin-top: 20px;
    height: 60px;
    line-height: 60px;
    background: #e3e4e8;
    text-align: center;
}

</style>
